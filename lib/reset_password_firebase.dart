import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/firebase/firebase.dart';
import 'package:kappelinranta/login_firebase.dart';

@NowaGenerated()
class ResetPasswordFirebase extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ResetPasswordFirebase({super.key});

  @override
  State<ResetPasswordFirebase> createState() {
    return _ResetPasswordFirebaseState();
  }
}

@NowaGenerated()
class _ResetPasswordFirebaseState extends State<ResetPasswordFirebase> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailField = TextEditingController();

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
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 0.0,
                  right: 0.0,
                  top: 0.0,
                  bottom: 72.0,
                ),
                child: NFlex(
                  direction: Axis.vertical,
                  spacing: 24.0,
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
                            spacing: 24.0,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FlexSizedBox(
                                child: ConstrainedBox(
                                  constraints:
                                      const BoxConstraints(maxWidth: 400.0),
                                  child: NFlex(
                                    direction: Axis.vertical,
                                    spacing: 12.0,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FlexSizedBox(
                                        width: null,
                                        height: null,
                                        child: Text(
                                          'Enter your email address',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                      ),
                                      FlexSizedBox(
                                        child: Text(
                                          'We will send you and email with instructions to reset your password',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                        ),
                                      )
                                    ],
                                  ),
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
                                      IconData(61042,
                                          fontFamily: 'MaterialIcons'),
                                      color: Color(0xff000000),
                                      size: 15.0,
                                    ),
                                    labelText: 'Email',
                                  ),
                                  validator: (value) {
                                    if (value == null || value!.isEmpty) {
                                      return 'Field is required';
                                    }
                                    if (!RegExp(kEmailValidationRegex)
                                        .hasMatch(value!)) {
                                      return 'Invalid email';
                                    }
                                    return null;
                                  },
                                  controller: emailField,
                                ),
                              ),
                              FlexSizedBox(
                                width: double.infinity,
                                child: CustomButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      FirebaseService()
                                          .sendPasswordResetEmail(
                                              emailField.text)
                                          .then((value) {}, onError: (error) {})
                                          .then((value) {}, onError: (error) {})
                                          .then((value) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text(
                                            'Email sent',
                                          ),
                                        ));
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginFirebase()));
                                      });
                                    }
                                  },
                                  color: const Color(0xff232323),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 36.0,
                                      right: 36.0,
                                      top: 0.0,
                                      bottom: 0.0,
                                    ),
                                    child: Text(
                                      'Reset password',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
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
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2e2e2e),
        title: Text(
          'Reset your password',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        automaticallyImplyLeading: true,
        foregroundColor: const Color(0xffffffff),
      ),
    );
  }
}
