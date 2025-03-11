import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/models/get_wedding_model.dart';
import 'package:kappelinranta/api/weddings.api.dart';
import 'package:kappelinranta/user_info.dart';
import 'package:kappelinranta/confirm_profesional_dialog.dart';
import 'package:kappelinranta/firebase/firebase.dart';
import 'package:kappelinranta/login_firebase.dart';

@NowaGenerated({'auto-height': 2000.0, 'auto-width': 365.0})
class WeddingPage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const WeddingPage({this.record_ID = '', super.key});

  final String? record_ID;

  @override
  State<WeddingPage> createState() {
    return _WeddingPageState();
  }
}

@NowaGenerated()
class _WeddingPageState extends State<WeddingPage> {
  String? couplesName = 'Couples name';

  String? weddingDate = '03.02.2025';

  bool? loader = true;

  String? packageLevel = 'Package';

  String? weddingStatus = 'status';

  String? floristStatus = 'Status';

  String? photographerStatus = 'Status';

  String? goldsmithStatus = 'Status';

  String? makeupStatus = 'Status';

  String? dressStatus = 'Status';

  String? notes = 'They are lovely';

  String? documentLink = '';

  bool? confirmButtonVisibility = true;

  bool? assitanceConfirmed = false;

  bool? floristVisibility = false;

  bool? photographerVisibility = false;

  bool? GoldsmithVisibility = false;

  bool? MakeupArtistVisibility = false;

  bool? dressArtistVisibility = false;

  Color? colorFlorist = const Color(0x40ff9e9e);

  Color? colorPhotographer = const Color(0x40ff9e9e);

  Color? colorGoldsmith = const Color(0x40ff9e9e);

  Color? ColorMakeUp = const Color(0x40ff9e9e);

  Color? colorDress = const Color(0x40ff9e9e);

  String? floristName = 'floristName';

  String? photographerName = 'photographerName';

  String? makeupArtistName = 'makeupArtistName';

  String? dressArtistName = 'makeupArtistName';

  String? goldsmithName = 'makeupArtistName';

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
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    right: 24.0,
                    top: 48.0,
                    bottom: 24.0,
                  ),
                  child: NFlex(
                    direction: Axis.vertical,
                    spacing: 24.0,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlexSizedBox(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 600.0),
                          child: NFlex(
                            direction: Axis.vertical,
                            spacing: 36.0,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      width: null,
                                      height: null,
                                      child: Text(
                                        couplesName ??
                                            'Missing the couples name',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                    ),
                                    FlexSizedBox(
                                      width: null,
                                      height: null,
                                      child: NFlex(
                                        direction: Axis.horizontal,
                                        spacing: 8.0,
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const FlexSizedBox(
                                            width: null,
                                            height: null,
                                            child: Icon(
                                              IconData(984763,
                                                  fontFamily: 'MaterialIcons'),
                                              color: Color(0xff383838),
                                              size: 16.0,
                                            ),
                                          ),
                                          FlexSizedBox(
                                            width: null,
                                            height: null,
                                            child: Text(
                                              weddingDate ?? 'Missing date',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              FlexSizedBox(
                                child: NFlex(
                                  direction: Axis.horizontal,
                                  spacing: 10.0,
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FlexSizedBox(
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                            minWidth: 150.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: const Color(0xff2e2e2e),
                                              borderRadius:
                                                  BorderRadius.circular(80.0)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 16.0,
                                              right: 16.0,
                                              top: 5.0,
                                              bottom: 6.0,
                                            ),
                                            child: NFlex(
                                              direction: Axis.horizontal,
                                              spacing: 5.0,
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                FlexSizedBox(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 0.0,
                                                      right: 6.0,
                                                      top: 0.0,
                                                      bottom: 0.0,
                                                    ),
                                                    child: NFlex(
                                                      direction:
                                                          Axis.horizontal,
                                                      spacing: 5.0,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        FlexSizedBox(
                                                          width: null,
                                                          height: null,
                                                          child: Text(
                                                            'Status:',
                                                            style: TextStyle(
                                                              fontSize: 12.0,
                                                              color: const Color(
                                                                  0xffffffff),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                        FlexSizedBox(
                                                          width: null,
                                                          height: null,
                                                          child: Text(
                                                            weddingStatus ??
                                                                'Missing status',
                                                            style: const TextStyle(
                                                                fontSize: 12.0,
                                                                color: Color(
                                                                    0xffffffff)),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                FlexSizedBox(
                                                  width: 6.0,
                                                  height: 6.0,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff27ff00),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    55.0)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    FlexSizedBox(
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                            minWidth: 150.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: const Color(0xff2e2e2e),
                                              borderRadius:
                                                  BorderRadius.circular(80.0)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 16.0,
                                              right: 16.0,
                                              top: 5.0,
                                              bottom: 6.0,
                                            ),
                                            child: NFlex(
                                              direction: Axis.horizontal,
                                              spacing: 5.0,
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                FlexSizedBox(
                                                  height: 17.0,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 0.0,
                                                      right: 6.0,
                                                      top: 0.0,
                                                      bottom: 0.0,
                                                    ),
                                                    child: NFlex(
                                                      direction:
                                                          Axis.horizontal,
                                                      spacing: 5.0,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        FlexSizedBox(
                                                          width: null,
                                                          height: null,
                                                          child: Text(
                                                            'Package:',
                                                            style: TextStyle(
                                                              fontSize: 12.0,
                                                              color: const Color(
                                                                  0xffffffff),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                        FlexSizedBox(
                                                          width: null,
                                                          height: null,
                                                          child: Text(
                                                            packageLevel ??
                                                                'Missing package',
                                                            style: const TextStyle(
                                                                fontSize: 12.0,
                                                                color: Color(
                                                                    0xffffffff)),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                FlexSizedBox(
                                                  width: 6.0,
                                                  height: 6.0,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff27ff00),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    55.0)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FlexSizedBox(
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                            minWidth: 300.0),
                                        child: Material(
                                          color: colorFlorist,
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  color: Color(0x1a000000),
                                                  width: 0.0),
                                              borderRadius:
                                                  BorderRadius.circular(4.0)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12.0,
                                              right: 12.0,
                                              top: 7.0,
                                              bottom: 6.0,
                                            ),
                                            child: NFlex(
                                              direction: Axis.vertical,
                                              spacing: 0.0,
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                FlexSizedBox(
                                                  child: NFlex(
                                                    direction: Axis.horizontal,
                                                    spacing: 2.0,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      FlexSizedBox(
                                                        child: Text(
                                                          'Florist:',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                        ),
                                                      ),
                                                      FlexSizedBox(
                                                        child: Text(
                                                          floristStatus ??
                                                              'Missing status',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelMedium,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                FlexSizedBox(
                                                  child: Visibility(
                                                    visible: floristVisibility!,
                                                    child: NFlex(
                                                      direction:
                                                          Axis.horizontal,
                                                      spacing: 4.0,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        FlexSizedBox(
                                                          child: Text(
                                                            floristName ?? ' ',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    FlexSizedBox(
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                            minWidth: 300.0),
                                        child: Material(
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 0.0,
                                                  color: Color(0x1a000000)),
                                              borderRadius:
                                                  BorderRadius.circular(4.0)),
                                          borderOnForeground: false,
                                          color: colorPhotographer,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12.0,
                                              right: 12.0,
                                              top: 7.0,
                                              bottom: 6.0,
                                            ),
                                            child: NFlex(
                                              direction: Axis.vertical,
                                              spacing: 2.0,
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                FlexSizedBox(
                                                  child: NFlex(
                                                    direction: Axis.horizontal,
                                                    spacing: 2.0,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      FlexSizedBox(
                                                        child: Text(
                                                          'Photographer:',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                        ),
                                                      ),
                                                      FlexSizedBox(
                                                        child: Text(
                                                          photographerStatus ??
                                                              'Missing status',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelMedium,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                FlexSizedBox(
                                                  child: Visibility(
                                                    visible:
                                                        photographerVisibility!,
                                                    child: NFlex(
                                                      direction:
                                                          Axis.horizontal,
                                                      spacing: 4.0,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        FlexSizedBox(
                                                          child: Text(
                                                            photographerName ??
                                                                ' ',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    FlexSizedBox(
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                            minWidth: 300.0),
                                        child: Material(
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 0.0,
                                                  color: Color(0x1a000000)),
                                              borderRadius:
                                                  BorderRadius.circular(4.0)),
                                          color: colorGoldsmith,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12.0,
                                              right: 12.0,
                                              top: 7.0,
                                              bottom: 6.0,
                                            ),
                                            child: NFlex(
                                              direction: Axis.vertical,
                                              spacing: 2.0,
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                FlexSizedBox(
                                                  child: NFlex(
                                                    direction: Axis.horizontal,
                                                    spacing: 2.0,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      FlexSizedBox(
                                                        child: Text(
                                                          'Goldsmith:',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                        ),
                                                      ),
                                                      FlexSizedBox(
                                                        child: Text(
                                                          goldsmithStatus ??
                                                              'Missing status',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelMedium,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                FlexSizedBox(
                                                  child: Visibility(
                                                    visible:
                                                        GoldsmithVisibility!,
                                                    child: NFlex(
                                                      direction:
                                                          Axis.horizontal,
                                                      spacing: 4.0,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        FlexSizedBox(
                                                          child: Text(
                                                            goldsmithName ??
                                                                ' ',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    FlexSizedBox(
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                            minWidth: 300.0),
                                        child: Material(
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 0.0,
                                                  color: Color(0x1a000000)),
                                              borderRadius:
                                                  BorderRadius.circular(4.0)),
                                          color: ColorMakeUp,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12.0,
                                              right: 12.0,
                                              top: 7.0,
                                              bottom: 6.0,
                                            ),
                                            child: NFlex(
                                              direction: Axis.vertical,
                                              spacing: 2.0,
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                FlexSizedBox(
                                                  child: NFlex(
                                                    direction: Axis.horizontal,
                                                    spacing: 2.0,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      FlexSizedBox(
                                                        child: Text(
                                                          'Make-up artist:',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                        ),
                                                      ),
                                                      FlexSizedBox(
                                                        child: Text(
                                                          makeupStatus ??
                                                              'Missing status',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelMedium,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                FlexSizedBox(
                                                  child: Visibility(
                                                    visible:
                                                        MakeupArtistVisibility!,
                                                    child: NFlex(
                                                      direction:
                                                          Axis.horizontal,
                                                      spacing: 4.0,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        FlexSizedBox(
                                                          child: Text(
                                                            makeupArtistName ??
                                                                ' ',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    FlexSizedBox(
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(
                                            minWidth: 300.0),
                                        child: Material(
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 0.0,
                                                  color: Color(0x1a000000)),
                                              borderRadius:
                                                  BorderRadius.circular(4.0)),
                                          color: colorDress,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12.0,
                                              right: 12.0,
                                              top: 7.0,
                                              bottom: 6.0,
                                            ),
                                            child: NFlex(
                                              direction: Axis.vertical,
                                              spacing: 2.0,
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                FlexSizedBox(
                                                  child: NFlex(
                                                    direction: Axis.horizontal,
                                                    spacing: 2.0,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      FlexSizedBox(
                                                        child: Text(
                                                          'Dress artist:',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                        ),
                                                      ),
                                                      FlexSizedBox(
                                                        child: Text(
                                                          dressStatus ??
                                                              'Missing status',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelMedium,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                FlexSizedBox(
                                                  child: Visibility(
                                                    visible:
                                                        dressArtistVisibility!,
                                                    child: NFlex(
                                                      direction:
                                                          Axis.horizontal,
                                                      spacing: 4.0,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        FlexSizedBox(
                                                          child: Text(
                                                            dressArtistName ??
                                                                ' ',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              FlexSizedBox(
                                width: double.infinity,
                                child: Material(
                                  color: const Color(0xfff5f5f5),
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0x00000000), width: 1.0),
                                      borderRadius: BorderRadius.circular(4.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 18.0,
                                      right: 18.0,
                                      top: 18.0,
                                      bottom: 18.0,
                                    ),
                                    child: NFlex(
                                      direction: Axis.vertical,
                                      spacing: 12.0,
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        FlexSizedBox(
                                          child: NFlex(
                                            direction: Axis.horizontal,
                                            spacing: 4.0,
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              FlexSizedBox(
                                                width: null,
                                                height: null,
                                                child: Text(
                                                  'Your role:',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall,
                                                ),
                                              ),
                                              FlexSizedBox(
                                                width: null,
                                                height: null,
                                                child: Text(
                                                  UserInfo.of(context)
                                                      .userRole!,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelMedium,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        FlexSizedBox(
                                          width: null,
                                          height: null,
                                          child: Visibility(
                                            visible: confirmButtonVisibility!,
                                            child: GestureDetector(
                                              onTap: () async {
                                                await showDialog(
                                                  builder: (context) =>
                                                      ConfirmProfesionalDialog(
                                                    record_ID: widget.record_ID,
                                                  ),
                                                  useRootNavigator: false,
                                                  context: context,
                                                  anchorPoint:
                                                      const Offset(0.0, 0.0),
                                                );
                                                if (UserInfo.of(context,
                                                            listen: false)
                                                        .userRole ==
                                                    'Photographer') {
                                                  photographerStatus =
                                                      'Confirmed';
                                                  colorPhotographer =
                                                      const Color(0x1a27ff00);
                                                  setState(() {});
                                                } else {
                                                  if (UserInfo.of(context,
                                                              listen: false)
                                                          .userRole ==
                                                      'Florist') {
                                                    floristStatus = 'Confirmed';
                                                    colorFlorist =
                                                        const Color(0x1a27ff00);
                                                    setState(() {});
                                                  } else {
                                                    if (UserInfo.of(context,
                                                                listen: false)
                                                            .userRole ==
                                                        'Goldsmith') {
                                                      goldsmithStatus =
                                                          'Confirmed';
                                                      colorGoldsmith =
                                                          const Color(
                                                              0x1a27ff00);
                                                      setState(() {});
                                                    } else {
                                                      if (UserInfo.of(context,
                                                                  listen: false)
                                                              .userRole ==
                                                          'Make-up artist') {
                                                        makeupStatus =
                                                            'Confirmed';
                                                        ColorMakeUp =
                                                            const Color(
                                                                0x1a27ff00);
                                                        setState(() {});
                                                      } else {
                                                        if (UserInfo.of(context,
                                                                    listen:
                                                                        false)
                                                                .userRole ==
                                                            'Bridal') {
                                                          dressStatus =
                                                              'Confirmed';
                                                          colorDress =
                                                              const Color(
                                                                  0x1a27ff00);
                                                          setState(() {});
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                                confirmButtonVisibility = false;
                                                assitanceConfirmed = true;
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                        const SnackBar(
                                                  content: Text(
                                                    'Confirmation suscesfull',
                                                  ),
                                                ));
                                              },
                                              child: Material(
                                                shape: RoundedRectangleBorder(
                                                    side: const BorderSide(
                                                        color:
                                                            Color(0xff2e2e2e),
                                                        width: 0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 3.0,
                                                    right: 4.0,
                                                    top: 2.0,
                                                    bottom: 2.0,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 0.0,
                                                      right: 10.0,
                                                      top: 0.0,
                                                      bottom: 0.0,
                                                    ),
                                                    child: NFlex(
                                                      direction:
                                                          Axis.horizontal,
                                                      spacing: 0.0,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        FlexSizedBox(
                                                          width: 30.0,
                                                          height: 30.0,
                                                          child: IconButton(
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              const IconData(
                                                                  57687,
                                                                  fontFamily:
                                                                      'MaterialIcons'),
                                                              color: const Color(
                                                                  0xff2f9e16),
                                                              size: 16.0,
                                                              opticalSize: 11.0,
                                                              shadows: [],
                                                              applyTextScaling:
                                                                  false,
                                                            ),
                                                          ),
                                                        ),
                                                        FlexSizedBox(
                                                          child: Text(
                                                            'Confirm your assistance',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .labelMedium,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        FlexSizedBox(
                                          child: Visibility(
                                            visible: assitanceConfirmed!,
                                            child: Text(
                                              'Your assistance is confirmed :)',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              FlexSizedBox(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                    top: 8.0,
                                    bottom: 0.0,
                                  ),
                                  child: NFlex(
                                    direction: Axis.vertical,
                                    spacing: 6.0,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FlexSizedBox(
                                        child: NFlex(
                                          direction: Axis.horizontal,
                                          spacing: 6.0,
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FlexSizedBox(
                                              child: Text(
                                                'Preeliminary notes',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall,
                                              ),
                                            ),
                                            const FlexSizedBox(
                                              width: null,
                                              height: null,
                                              child: Icon(
                                                IconData(62440,
                                                    fontFamily:
                                                        'MaterialIcons'),
                                                color: Color(0xff383838),
                                                size: 16.0,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      FlexSizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          notes ?? ' No notes',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              FlexSizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10.0,
                                    right: 10.0,
                                    top: 48.0,
                                    bottom: 10.0,
                                  ),
                                  child: NFlex(
                                    direction: Axis.vertical,
                                    spacing: 24.0,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlexSizedBox(
                                        width: null,
                                        height: 40.0,
                                        child: CustomButton(
                                          onPressed: () {
                                            openUrl(documentLink!);
                                          },
                                          color: const Color(0xff2e2e2e),
                                          child: Text(
                                            'Go to the planning document',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall,
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
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Visibility(
                visible: loader!,
                child: Material(
                  child: NFlex(
                    direction: Axis.vertical,
                    spacing: 0.0,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const FlexSizedBox(
                        width: null,
                        height: null,
                        child: CircularProgressIndicator(),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Wedding info',
          style: Theme.of(context).textTheme.titleSmall,
        ),
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
            ),
          )
        ],
        foregroundColor: const Color(0xffffffff),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    var weddingFromApi =
        await Weddings().getWedding(record_ID_request: widget.record_ID);
    couplesName = weddingFromApi!.data!.records![0]?.fields?.couplesNames;
    weddingDate = weddingFromApi!.data!.records![0]?.fields?.weddingDate;
    weddingStatus = weddingFromApi!.data!.records![0]?.fields?.status;
    floristStatus = weddingFromApi!.data!.records![0]?.fields?.floristStatus;
    floristName = weddingFromApi!.data!.records![0]?.fields?.floristName;
    if (floristStatus == 'Confirmed') {
      floristVisibility = true;
      colorFlorist = const Color(0x1a27ff00);
    }
    photographerStatus =
        weddingFromApi!.data!.records![0]?.fields?.photographerStatus;
    photographerName =
        weddingFromApi!.data!.records![0]?.fields?.photographerName;
    if (photographerStatus == 'Confirmed') {
      photographerVisibility = true;
      colorPhotographer = const Color(0x1a27ff00);
    }
    goldsmithStatus =
        weddingFromApi!.data!.records![0]?.fields?.goldsmithStatus;
    goldsmithName = weddingFromApi!.data!.records![0]?.fields?.goldsmithName;
    if (goldsmithStatus == 'Confirmed') {
      GoldsmithVisibility = true;
      colorGoldsmith = const Color(0x1a27ff00);
    }
    makeupStatus =
        weddingFromApi!.data!.records![0]?.fields?.makeUpArtistStatus;
    makeupArtistName =
        weddingFromApi!.data!.records![0]?.fields?.makeUpArtistName;
    if (makeupStatus == 'Confirmed') {
      MakeupArtistVisibility = true;
      ColorMakeUp = const Color(0x1a27ff00);
    }
    dressStatus = weddingFromApi!.data!.records![0]?.fields?.weddingDressStatus;
    dressArtistName =
        weddingFromApi!.data!.records![0]?.fields?.weddingDressName;
    if (dressStatus == 'Confirmed') {
      dressArtistVisibility = true;
      colorDress = const Color(0x1a27ff00);
    }
    weddingFromApi!.data!.records![0]?.fields?.preliminaryNotes;
    documentLink = weddingFromApi!.data!.records![0]?.fields?.driveDoc;
    setState(() {});
    if (UserInfo.of(context, listen: false).userRole == 'Venue') {
      confirmButtonVisibility = false;
      assitanceConfirmed = true;
    } else {
      if (UserInfo.of(context, listen: false).userRole == 'Florist' &&
          floristStatus == 'Confirmed') {
        confirmButtonVisibility = false;
        assitanceConfirmed = true;
      } else {
        if (UserInfo.of(context, listen: false).userRole == 'Goldsmith' &&
            goldsmithStatus == 'Confirmed') {
          confirmButtonVisibility = false;
          assitanceConfirmed = true;
        }
        if (UserInfo.of(context, listen: false).userRole == 'Make-up artist' &&
            makeupStatus == 'Confirmed') {
          confirmButtonVisibility = false;
          assitanceConfirmed = true;
        } else {
          if (UserInfo.of(context, listen: false).userRole == 'Bridal' &&
              dressStatus == 'Confirmed') {
            confirmButtonVisibility = false;
            assitanceConfirmed = true;
          } else {
            if (UserInfo.of(context, listen: false).userRole ==
                    'Photographer' &&
                photographerStatus == 'Confirmed') {
              confirmButtonVisibility = false;
              assitanceConfirmed = true;
            }
          }
        }
      }
    }
    loader = false;
  }
}
