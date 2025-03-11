import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/weddings_model.dart';

@NowaGenerated({'auto-width': 444.0, 'auto-height': 257.0})
class WeddingCardUnconfirmed extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const WeddingCardUnconfirmed({this.weddingParam, super.key});

  final WeddingsModel? weddingParam;

  @override
  State<WeddingCardUnconfirmed> createState() {
    return _WeddingCardUnconfirmedState();
  }
}

@NowaGenerated()
class _WeddingCardUnconfirmedState extends State<WeddingCardUnconfirmed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfff5f5f5),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [],
        border: Border.all(color: const Color(0xff999999), width: 1.0),
      ),
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
          mainAxisAlignment: MainAxisAlignment.center,
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
                          'Missing couple names',
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
                                'Missing date',
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
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 0.0,
                  right: 0.0,
                  top: 0.0,
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
                        widget.weddingParam?.preeliminaryNotes ??
                            'Missing notes',
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
}
