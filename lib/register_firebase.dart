import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/firebase/firebase.dart';
import 'package:kappelinranta/user_information.dart';

@NowaGenerated({'auto-height': 847.0})
class RegisterFirebase extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RegisterFirebase({super.key});

  @override
  State<RegisterFirebase> createState() {
    return _RegisterFirebaseState();
  }
}

@NowaGenerated()
class _RegisterFirebaseState extends State<RegisterFirebase> {
  bool? registerLoader = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController registerEmail = TextEditingController();

  TextEditingController registerPasswor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: NFlex(
                direction: Axis.vertical,
                spacing: 22.0,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlexSizedBox(
                    child: Form(
                      key: formKey,
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 300.0),
                        child: NFlex(
                          direction: Axis.vertical,
                          spacing: 22.0,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlexSizedBox(
                              width: double.infinity,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: '',
                                  contentPadding: EdgeInsets.only(
                                    left: 10.0,
                                    right: 10.0,
                                    top: 10.0,
                                    bottom: 10.0,
                                  ),
                                  prefixIcon: Icon(
                                    IconData(61042,
                                        fontFamily: 'MaterialIcons'),
                                    color: Color(0xff000000),
                                    size: 15.0,
                                  ),
                                  labelText: 'Email',
                                ),
                                validator: (value) {
                                  if (value == null || value!.isEmpty) {
                                    return 'The field is required';
                                  }
                                  if (!RegExp(kEmailValidationRegex)
                                      .hasMatch(value!)) {
                                    return 'Invalid email';
                                  }
                                  return null;
                                },
                                controller: registerEmail,
                              ),
                            ),
                            FlexSizedBox(
                              width: double.infinity,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: '',
                                  contentPadding: EdgeInsets.only(
                                    left: 10.0,
                                    right: 10.0,
                                    top: 10.0,
                                    bottom: 10.0,
                                  ),
                                  prefixIcon: Icon(
                                    IconData(59079,
                                        fontFamily: 'MaterialIcons'),
                                    color: Color(0xff000000),
                                    size: 15.0,
                                  ),
                                  labelText: 'Password',
                                ),
                                validator: (value) {
                                  if (value == null || value!.isEmpty) {
                                    return 'Field is required';
                                  }
                                  if (!RegExp('^.{8,}\$').hasMatch(value!)) {
                                    return 'Minimun 8 charachter';
                                  }
                                  return null;
                                },
                                controller: registerPasswor,
                              ),
                            ),
                            FlexSizedBox(
                              width: double.infinity,
                              height: 40.0,
                              child: CustomButton(
                                onPressed: () {
                                  registerLoader = true;
                                  setState(() {});
                                  if (formKey.currentState!.validate()) {
                                    FirebaseService()
                                        .signUpWithEmailAndPassword(
                                            registerEmail.text,
                                            registerPasswor.text)
                                        .then((value) {
                                      registerLoader = false;
                                      setState(() {});
                                      FirebaseService().sendVerificationEmail();
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  UserInformation(
                                                    registeredEmailParam:
                                                        registerEmail.text,
                                                  )));
                                    }, onError: (error) {
                                      registerLoader = false;
                                      setState(() {});
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(
                                          'Error: ${error}',
                                        ),
                                      ));
                                    });
                                  } else {
                                    registerLoader = false;
                                    setState(() {});
                                  }
                                },
                                color: const Color(0xff2e2e2e),
                                child: Text(
                                  'Register ',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ),
                            FlexSizedBox(
                              width: 200.0,
                              height: 4.0,
                              child: Visibility(
                                visible: registerLoader!,
                                child: LinearProgressIndicator(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff2e2e2e),
        actions: [],
        foregroundColor: const Color(0xffffffff),
      ),
    );
  }
}
