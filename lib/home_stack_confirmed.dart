import 'package:flutter/material.dart';
import 'package:kappelinranta/weddings_model.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/user_info.dart';
import 'package:kappelinranta/models/get_all_weddings_confirmed_model.dart';
import 'package:kappelinranta/wedding_page.dart';
import 'package:kappelinranta/wedding_card_confirmed.dart';
import 'package:kappelinranta/api/weddings.api.dart';

@NowaGenerated({'auto-width': 390.0, 'auto-height': 1984.0})
class HomeStackConfirmed extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HomeStackConfirmed({super.key});

  @override
  State<HomeStackConfirmed> createState() {
    return _HomeStackConfirmedState();
  }
}

@NowaGenerated()
class _HomeStackConfirmedState extends State<HomeStackConfirmed> {
  List<WeddingsModel?>? listOfWeddings = const [];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfffcfcfc),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          top: 12.0,
          bottom: 10.0,
        ),
        child: NFlex(
          direction: Axis.vertical,
          spacing: 20.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlexSizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  top: 24.0,
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
                      child: NFlex(
                        direction: Axis.horizontal,
                        spacing: 4.0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlexSizedBox(
                            width: null,
                            height: 23.0,
                            child: Text(
                              'Hello ' + UserInfo.of(context).userName!,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          const FlexSizedBox(
                            width: 25.0,
                            height: 25.0,
                            child: Image(
                              image: AssetImage('assets/waving-hand_1f44b.png'),
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    FlexSizedBox(
                      width: null,
                      child: Text(
                        'This is the list of weddings that are already confirmed. ',
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
              child: DataBuilder<GetAllWeddingsConfirmedModel?>(
                builder: (context, data) => ListView.separated(
                  itemCount: data!.data!.records!.length,
                  itemBuilder: (context, index) {
                    final RecordsItem6? element = data?.data?.records?[index];
                    return SizedBox(
                      width: null,
                      height: null,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => WeddingPage(
                                    record_ID: element?.recordId,
                                  )));
                        },
                        child: WeddingCardConfirmed(
                          weddingParam: WeddingsModel(
                            couplesName: element?.fields?.couplesNames,
                            packageLevel: element?.fields?.package,
                            weddingStatus: element?.fields?.status,
                            flowersStatus: element?.fields?.floristStatus,
                            weddingDate: element?.fields?.weddingDate,
                            photographerStatus:
                                element?.fields?.photographerStatus,
                            goldsmithStatus: element?.fields?.goldsmithStatus,
                            makeupStatus: element?.fields?.makeUpArtistStatus,
                            dressStatus: element?.fields?.weddingDressStatus,
                            floristName: element?.fields?.floristName,
                            photographerName: element?.fields?.photographerName,
                            goldsmithName: element?.fields?.goldsmithName,
                            makeupArtistName: element?.fields?.makeUpArtistName,
                            dressArtistName: element?.fields?.weddingDressName,
                            preeliminaryNotes:
                                element?.fields?.preliminaryNotes,
                            record_ID: element?.recordId,
                          ),
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
                  reverse: false,
                  shrinkWrap: false,
                  scrollDirection: Axis.vertical,
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
                future: Weddings().getAllWeddingsConfirmed(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
