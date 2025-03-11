import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'dart:async';
import 'package:kappelinranta/firebase/firebase.dart';
import 'package:kappelinranta/user_info.dart';
import 'package:kappelinranta/main.dart';
import 'package:kappelinranta/home.dart';
import 'package:kappelinranta/login_firebase.dart';

@NowaGenerated({'auto-height': 857.0, 'auto-width': 380.0})
class SplashScreen extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

@NowaGenerated()
class _SplashScreenState extends State<SplashScreen> {
  String? tempUserEmail = '';

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
                spacing: 12.0,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlexSizedBox(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 350.0),
                      child: NFlex(
                        direction: Axis.vertical,
                        spacing: 24.0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlexSizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: LottieBuilder(
                              lottie: NetworkLottie(
                                  'https://assets2.lottiefiles.com/packages/lf20_aZTdD5.json'),
                            ),
                          ),
                          FlexSizedBox(
                            child: Text(
                              'loading...',
                              style: Theme.of(context).textTheme.titleLarge,
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

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      if (FirebaseService().isUserSignedIn()) {
        UserInfo.of(context, listen: false).userName =
            sharedPrefs.getString('userName');
        UserInfo.of(context, listen: false).userEmail =
            sharedPrefs.getString('userEmail');
        UserInfo.of(context, listen: false).userRole =
            sharedPrefs.getString('userRole');
        UserInfo.of(context, listen: false).userCompany =
            sharedPrefs.getString('companyName');
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Home()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginFirebase()));
      }
    });
  }
}
