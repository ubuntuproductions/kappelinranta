import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class Splash extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Splash({super.key});

  @override
  State<Splash> createState() {
    return _SplashState();
  }
}

@NowaGenerated()
class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 420.0,
              left: 95.0,
              width: 200.0,
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(0.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
