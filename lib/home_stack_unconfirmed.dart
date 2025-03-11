import 'package:flutter/material.dart';
import 'package:kappelinranta/weddings_model.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/models/get_weddings_unconfirmed_model1.dart';
import 'package:kappelinranta/wedding_card_unconfirmed.dart';
import 'package:kappelinranta/api/weddings.api.dart';

@NowaGenerated({'auto-width': 390.0, 'auto-height': 1984.0})
class HomeStackUnconfirmed extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HomeStackUnconfirmed({super.key});

  @override
  State<HomeStackUnconfirmed> createState() {
    return _HomeStackUnconfirmedState();
  }
}

@NowaGenerated()
class _HomeStackUnconfirmedState extends State<HomeStackUnconfirmed> {
  List<WeddingsModel?>? listOfWeddings = const [];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffffffff),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          top: 12.0,
          bottom: 10.0,
        ),
        child: NFlex(
          direction: Axis.vertical,
          spacing: 32.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlexSizedBox(
              width: null,
              height: null,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  top: 21.0,
                  bottom: 0.0,
                ),
                child: NFlex(
                  direction: Axis.vertical,
                  spacing: 22.0,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlexSizedBox(
                      width: null,
                      height: null,
                      child: Text(
                        'This is the list of weddings that are under negotiation and not yet confirmed.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
              ),
            ),
            FlexSizedBox(
              width: double.infinity,
              flex: 1,
              child: DataBuilder<GetWeddingsUnconfirmedModel1?>(
                builder: (context, data) => ListView.separated(
                  itemCount: data!.data!.records!.length,
                  itemBuilder: (context, index) {
                    final RecordsItem8? element = data?.data?.records?[index];
                    return SizedBox(
                      width: 374.0,
                      child: WeddingCardUnconfirmed(
                        weddingParam: WeddingsModel(
                          couplesName: element?.fields?.couplesNames,
                          weddingDate: element?.fields?.weddingDate,
                          preeliminaryNotes: element?.fields?.preliminaryNotes,
                          record_ID: element?.recordId,
                        ),
                      ),
                    );
                  },
                  padding: const EdgeInsets.only(
                    left: 0.0,
                    right: 0.0,
                    top: 0.0,
                    bottom: 0.0,
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 16.0,
                    width: 20.0,
                  ),
                ),
                loadingWidget: const Align(
                  alignment: Alignment(0.0, 0.0),
                  child: CircularProgressIndicator(),
                ),
                errorBuilder: (context, error) => Align(
                  alignment: const Alignment(0.0, 0.0),
                  child: Text(
                    error!.toString(),
                    style: const TextStyle(color: Color(0xffff0000)),
                  ),
                ),
                future: Weddings().getWeddingsUnconfirmed(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
