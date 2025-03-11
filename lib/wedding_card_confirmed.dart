import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/weddings_model.dart';

@NowaGenerated({'auto-width': 441.0, 'auto-height': 257.0})
class WeddingCardConfirmed extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const WeddingCardConfirmed(
      {this.weddingParam = const WeddingsModel(
        couplesName: 'couples Name',
        packageLevel: 'package Level',
        weddingStatus: 'wedding Status',
        flowersStatus: 'flowers Status',
        weddingDate: 'wedding Date',
        photographerStatus: 'photographer Status',
        goldsmithStatus: 'goldsmith Status',
        makeupStatus: 'makeup Status',
        dressStatus: 'dress Status',
        floristName: 'florist Name',
        photographerName: 'photographer Name',
        goldsmithName: 'goldsmith Name',
        makeupArtistName: 'makeup Artist Name',
        dressArtistName: 'dress Artist Name',
        preeliminaryNotes: 'preeliminary Notes',
        record_ID: 'record ID',
      ),
      super.key});

  final WeddingsModel? weddingParam;

  @override
  State<WeddingCardConfirmed> createState() {
    return _WeddingCardConfirmedState();
  }
}

@NowaGenerated()
class _WeddingCardConfirmedState extends State<WeddingCardConfirmed> {
  Color? backgroundColorFlorist = const Color(0x40ff9e9e);

  Color? backgroundColorDress = const Color(0x40ff9e9e);

  Color? backgroundColorPhotographer = const Color(0x40ff9e9e);

  Color? backgroundColorMakeup = const Color(0x40ff9e9e);

  Color? backgroundColorGoldsmith = const Color(0x40ff9e9e);

  bool? floristVisibility = false;

  bool? photographerVisibility = false;

  bool? goldsmithVisibility = false;

  bool? makeupArtistVisibility = false;

  bool? dressArtistVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfff5f5f5),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xffc6c6c6), width: 1.0),
          borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          right: 30.0,
          top: 30.0,
          bottom: 30.0,
        ),
        child: NFlex(
          direction: Axis.vertical,
          spacing: 24.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlexSizedBox(
              child: NFlex(
                direction: Axis.vertical,
                spacing: 24.0,
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
                            widget.weddingParam?.couplesName ??
                                'Missing the couples name',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                        FlexSizedBox(
                          child: NFlex(
                            direction: Axis.horizontal,
                            spacing: 8.0,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const FlexSizedBox(
                                width: null,
                                height: null,
                                child: Icon(
                                  IconData(984763, fontFamily: 'MaterialIcons'),
                                  color: Color(0xff383838),
                                  size: 16.0,
                                ),
                              ),
                              FlexSizedBox(
                                width: null,
                                height: null,
                                child: Text(
                                  widget.weddingParam?.weddingDate
                                          ?.substring(0, 10)
                                          .replaceAll('/', '.') ??
                                      'Unknown Date',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  FlexSizedBox(
                    width: double.infinity,
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 8.0,
                      runSpacing: 6.0,
                      children: [
                        FlexSizedBox(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(minWidth: 150.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff2e2e2e),
                                  borderRadius: BorderRadius.circular(80.0)),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlexSizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 0.0,
                                          right: 6.0,
                                          top: 0.0,
                                          bottom: 0.0,
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
                                              width: null,
                                              height: null,
                                              child: Text(
                                                'Package:',
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color:
                                                      const Color(0xffffffff),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            FlexSizedBox(
                                              width: null,
                                              height: null,
                                              child: Text(
                                                widget.weddingParam
                                                        ?.packageLevel ??
                                                    'Missing level',
                                                style: const TextStyle(
                                                    fontSize: 12.0,
                                                    color: Color(0xffffffff)),
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
                                            color: const Color(0xff27ff00),
                                            borderRadius:
                                                BorderRadius.circular(55.0)),
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
                            constraints: const BoxConstraints(minWidth: 150.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff2e2e2e),
                                  borderRadius: BorderRadius.circular(80.0)),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlexSizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 0.0,
                                          right: 6.0,
                                          top: 0.0,
                                          bottom: 0.0,
                                        ),
                                        child: NFlex(
                                          direction: Axis.horizontal,
                                          spacing: 5.0,
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
                                                'Status:',
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color:
                                                      const Color(0xffffffff),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            FlexSizedBox(
                                              width: null,
                                              height: null,
                                              child: Text(
                                                widget.weddingParam
                                                        ?.weddingStatus ??
                                                    'Missing status',
                                                style: const TextStyle(
                                                    fontSize: 12.0,
                                                    color: Color(0xffffffff)),
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
                                            color: const Color(0xff27ff00),
                                            borderRadius:
                                                BorderRadius.circular(55.0)),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlexSizedBox(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(minWidth: 300.0),
                      child: Material(
                        color: backgroundColorFlorist,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color(0x1a000000), width: 0.0),
                            borderRadius: BorderRadius.circular(4.0)),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FlexSizedBox(
                                child: NFlex(
                                  direction: Axis.horizontal,
                                  spacing: 2.0,
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlexSizedBox(
                                      child: Text(
                                        'Florist:',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                    FlexSizedBox(
                                      child: Text(
                                        widget.weddingParam?.flowersStatus ??
                                            'Missing status',
                                        style: Theme.of(context)
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
                                    direction: Axis.horizontal,
                                    spacing: 4.0,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlexSizedBox(
                                        child: Text(
                                          widget.weddingParam?.floristName ??
                                              'Missing name',
                                          style: Theme.of(context)
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
                      constraints: const BoxConstraints(minWidth: 300.0),
                      child: Material(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.0, color: Color(0x1a000000)),
                            borderRadius: BorderRadius.circular(4.0)),
                        borderOnForeground: false,
                        color: backgroundColorPhotographer,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FlexSizedBox(
                                child: NFlex(
                                  direction: Axis.horizontal,
                                  spacing: 2.0,
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlexSizedBox(
                                      child: Text(
                                        'Photographer:',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                    FlexSizedBox(
                                      child: Text(
                                        widget.weddingParam
                                                ?.photographerStatus ??
                                            'Missing status',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              FlexSizedBox(
                                child: Visibility(
                                  visible: photographerVisibility!,
                                  child: NFlex(
                                    direction: Axis.horizontal,
                                    spacing: 4.0,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlexSizedBox(
                                        child: Text(
                                          widget.weddingParam
                                                  ?.photographerName ??
                                              'Missing name',
                                          style: Theme.of(context)
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
                      constraints: const BoxConstraints(minWidth: 300.0),
                      child: Material(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.0, color: Color(0x1a000000)),
                            borderRadius: BorderRadius.circular(4.0)),
                        color: backgroundColorGoldsmith,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FlexSizedBox(
                                child: NFlex(
                                  direction: Axis.horizontal,
                                  spacing: 2.0,
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlexSizedBox(
                                      child: Text(
                                        'Goldsmith:',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                    FlexSizedBox(
                                      child: Text(
                                        widget.weddingParam?.goldsmithStatus ??
                                            'Missing status',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              FlexSizedBox(
                                child: Visibility(
                                  visible: goldsmithVisibility!,
                                  child: NFlex(
                                    direction: Axis.horizontal,
                                    spacing: 4.0,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlexSizedBox(
                                        child: Text(
                                          widget.weddingParam?.goldsmithName ??
                                              'Missing name',
                                          style: Theme.of(context)
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
                      constraints: const BoxConstraints(minWidth: 300.0),
                      child: Material(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.0, color: Color(0x1a000000)),
                            borderRadius: BorderRadius.circular(4.0)),
                        color: backgroundColorMakeup,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FlexSizedBox(
                                child: NFlex(
                                  direction: Axis.horizontal,
                                  spacing: 2.0,
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlexSizedBox(
                                      child: Text(
                                        'Make-up artist:',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                    FlexSizedBox(
                                      child: Text(
                                        widget.weddingParam?.makeupStatus ??
                                            'Missing status',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              FlexSizedBox(
                                child: Visibility(
                                  visible: makeupArtistVisibility!,
                                  child: NFlex(
                                    direction: Axis.horizontal,
                                    spacing: 4.0,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlexSizedBox(
                                        child: Text(
                                          widget.weddingParam
                                                  ?.makeupArtistName ??
                                              'Missing name',
                                          style: Theme.of(context)
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
                      constraints: const BoxConstraints(minWidth: 300.0),
                      child: Material(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.0, color: Color(0x1a000000)),
                            borderRadius: BorderRadius.circular(4.0)),
                        color: backgroundColorDress,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FlexSizedBox(
                                child: NFlex(
                                  direction: Axis.horizontal,
                                  spacing: 2.0,
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlexSizedBox(
                                      child: Text(
                                        'Dress artist:',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                    ),
                                    FlexSizedBox(
                                      child: Text(
                                        widget.weddingParam?.dressStatus ??
                                            'Missing status',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              FlexSizedBox(
                                child: Visibility(
                                  visible: dressArtistVisibility!,
                                  child: NFlex(
                                    direction: Axis.horizontal,
                                    spacing: 4.0,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlexSizedBox(
                                        child: Text(
                                          widget.weddingParam
                                                  ?.dressArtistName ??
                                              'Missing name',
                                          style: Theme.of(context)
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlexSizedBox(
                      child: NFlex(
                        direction: Axis.horizontal,
                        spacing: 6.0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlexSizedBox(
                            child: Text(
                              'Notes',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                          const FlexSizedBox(
                            width: null,
                            height: null,
                            child: Icon(
                              IconData(62440, fontFamily: 'MaterialIcons'),
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
                        widget.weddingParam?.preeliminaryNotes ?? ' ',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
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
    if (widget.weddingParam?.flowersStatus == 'Confirmed') {
      backgroundColorFlorist = const Color(0x1a27ff00);
      floristVisibility = true;
    }
    if (widget.weddingParam?.photographerStatus == 'Confirmed') {
      backgroundColorPhotographer = const Color(0x1a27ff00);
      photographerVisibility = true;
    }
    if (widget.weddingParam?.goldsmithStatus == 'Confirmed') {
      backgroundColorGoldsmith = const Color(0x1a27ff00);
      goldsmithVisibility = true;
    }
    if (widget.weddingParam?.makeupStatus == 'Confirmed') {
      backgroundColorMakeup = const Color(0x1a27ff00);
      makeupArtistVisibility = true;
    }
    if (widget.weddingParam?.dressStatus == 'Confirmed') {
      backgroundColorDress = const Color(0x1a27ff00);
      dressArtistVisibility = true;
    }
  }
}
