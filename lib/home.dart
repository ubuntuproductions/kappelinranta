import 'package:flutter/material.dart';
import 'package:kappelinranta/weddings_model.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/home_stack_confirmed.dart';
import 'package:kappelinranta/home_stack_unconfirmed.dart';
import 'package:kappelinranta/firebase/firebase.dart';
import 'package:kappelinranta/login_firebase.dart';

@NowaGenerated({'auto-height': 844.0, 'auto-width': 390.0})
class Home extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Home({super.key});

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

@NowaGenerated()
class _HomeState extends State<Home> {
  List<WeddingsModel?>? listOfWeddings = const [];

  int? pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NFlex(
          direction: Axis.vertical,
          spacing: 0.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlexSizedBox(
              width: double.infinity,
              flex: 1,
              child: NFlex(
                direction: Axis.vertical,
                spacing: 0.0,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlexSizedBox(
                    flex: 1,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 600.0),
                      child: NFlex(
                        direction: Axis.vertical,
                        spacing: 0.0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlexSizedBox(
                            flex: 1,
                            width: double.infinity,
                            child: IndexedStack(
                              index: pageIndex,
                              clipBehavior: Clip.antiAlias,
                              sizing: StackFit.passthrough,
                              children: [
                                const SizedBox(
                                  child: HomeStackConfirmed(),
                                ),
                                const HomeStackUnconfirmed()
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
      appBar: AppBar(
        backgroundColor: const Color(0xff2e2e2e),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseService().signOut().then((value) {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const LoginFirebase()),
                    (route) => false);
              });
            },
            icon: const Icon(
              IconData(58290, fontFamily: 'MaterialIcons'),
              color: Color(0xffffffff),
              opticalSize: 48.0,
            ),
          )
        ],
        foregroundColor: const Color(0xffffffff),
        title: Text(
          'List of weddings',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              IconData(57687, fontFamily: 'MaterialIcons'),
              color: Color(0xffffffff),
            ),
            label: 'Confirmed',
            backgroundColor: Color(0xff000000),
          ),
          const BottomNavigationBarItem(
              icon: Icon(
                IconData(984766, fontFamily: 'MaterialIcons'),
                color: Color(0xffffffff),
                applyTextScaling: false,
              ),
              label: 'Coming up')
        ],
        onTap: (value) {
          pageIndex = value;
          setState(() {});
        },
        currentIndex: pageIndex!,
        backgroundColor: const Color(0xff2e2e2e),
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        unselectedItemColor: const Color(0xffffffff),
        selectedItemColor: const Color(0xffffffff),
        showSelectedLabels: true,
      ),
    );
  }
}
