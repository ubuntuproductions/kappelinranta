import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/api/aitable.api.dart';
import 'package:kappelinranta/login_firebase.dart';

@NowaGenerated({'auto-height': 846.0})
class UserInformation extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const UserInformation(
      {this.param = '', this.registeredEmailParam = '', super.key});

  final String? param;

  final String? registeredEmailParam;

  @override
  State<UserInformation> createState() {
    return _UserInformationState();
  }
}

@NowaGenerated()
class _UserInformationState extends State<UserInformation> {
  String? dropdownValue = '';

  TextEditingController registrationName = TextEditingController();

  TextEditingController registrationLastName = TextEditingController();

  bool? userInfoLoader = false;

  TextEditingController registrationCompany = TextEditingController();

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
                spacing: 0.0,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlexSizedBox(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300.0),
                      child: NFlex(
                        direction: Axis.vertical,
                        spacing: 32.0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlexSizedBox(
                            child: NFlex(
                              direction: Axis.vertical,
                              spacing: 12.0,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlexSizedBox(
                                  child: Text(
                                    'Some more information',
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                ),
                                FlexSizedBox(
                                  child: Text(
                                    'To complete your registration, fill this information and confirm your email via the link that you got in your email ;)',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                )
                              ],
                            ),
                          ),
                          FlexSizedBox(
                            width: double.infinity,
                            child: NFlex(
                              direction: Axis.vertical,
                              spacing: 12.0,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FlexSizedBox(
                                  width: double.infinity,
                                  height: null,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: '',
                                      contentPadding: EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                        top: 10.0,
                                        bottom: 10.0,
                                      ),
                                      labelText: 'First name',
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
                                    controller: registrationName,
                                  ),
                                ),
                                FlexSizedBox(
                                  width: double.infinity,
                                  height: null,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: '',
                                      contentPadding: EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                        top: 10.0,
                                        bottom: 10.0,
                                      ),
                                      labelText: 'Last Name',
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
                                    controller: registrationLastName,
                                  ),
                                ),
                                FlexSizedBox(
                                  width: double.infinity,
                                  height: null,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: '',
                                      contentPadding: EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                        top: 10.0,
                                        bottom: 10.0,
                                      ),
                                      labelText: 'Company name',
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
                                    controller: registrationCompany,
                                  ),
                                ),
                                FlexSizedBox(
                                  width: double.infinity,
                                  child: DropdownButtonFormField<String>(
                                    items: [
                                      DropdownMenuItem<String>(
                                        onTap: () {},
                                        value: 'Venue',
                                        child: const Text(
                                          'Venue',
                                        ),
                                      ),
                                      const DropdownMenuItem<String>(
                                        value: 'Photographer',
                                        child: Text(
                                          'Photographer',
                                        ),
                                      ),
                                      const DropdownMenuItem<String>(
                                        value: 'Florist',
                                        child: Text(
                                          'Florist',
                                        ),
                                      ),
                                      const DropdownMenuItem<String>(
                                        value: 'Goldsmith',
                                        child: Text(
                                          'Goldsmith',
                                        ),
                                      ),
                                      const DropdownMenuItem<String>(
                                        value: 'Make-up artist',
                                        child: Text(
                                          'Make-up artist',
                                        ),
                                      ),
                                      const DropdownMenuItem<String>(
                                        value: 'Bridal',
                                        child: Text(
                                          'Bridal',
                                        ),
                                      )
                                    ],
                                    onChanged: (value) {
                                      dropdownValue = value;
                                    },
                                    borderRadius: BorderRadius.circular(0.0),
                                    value: 'Venue',
                                    onTap: () {},
                                  ),
                                ),
                                FlexSizedBox(
                                  width: double.infinity,
                                  height: null,
                                  child: CustomButton(
                                    onPressed: () {
                                      userInfoLoader = true;
                                      setState(() {});
                                      Aitable()
                                          .userInfo(
                                        email: widget.registeredEmailParam,
                                        FirstName: registrationName.text,
                                        LastName: registrationLastName.text,
                                        category: dropdownValue,
                                        companyName: registrationCompany.text,
                                      )
                                          .then((value) {
                                        userInfoLoader = false;
                                        setState(() {});
                                        Navigator.of(context)
                                            .pushAndRemoveUntil(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const LoginFirebase()),
                                                (route) => false);
                                      }, onError: (error) {
                                        userInfoLoader = false;
                                        setState(() {});
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text(
                                            'Something went wrong. Please try again, and if the error persists, contact me.',
                                          ),
                                        ));
                                      });
                                    },
                                    color: const Color(0xff2e2e2e),
                                    child: const Text(
                                      'Send',
                                      textAlign: TextAlign.center,
                                      style:
                                          TextStyle(color: Color(0xffffffff)),
                                    ),
                                  ),
                                ),
                                FlexSizedBox(
                                  width: 200.0,
                                  height: 4.0,
                                  child: Visibility(
                                    visible: userInfoLoader!,
                                    child: LinearProgressIndicator(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
