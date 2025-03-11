import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/user_info.dart';
import 'package:kappelinranta/api/weddings.api.dart';

@NowaGenerated({'auto-width': 398.0, 'auto-height': 290.0})
class ConfirmProfesionalDialog extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ConfirmProfesionalDialog({this.record_ID = '', super.key});

  final String? record_ID;

  @override
  State<ConfirmProfesionalDialog> createState() {
    return _ConfirmProfesionalDialogState();
  }
}

@NowaGenerated()
class _ConfirmProfesionalDialogState extends State<ConfirmProfesionalDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      buttonPadding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 10.0,
        bottom: 10.0,
      ),
      backgroundColor: const Color(0xff2e2e2e),
      actions: [
        CustomButton(
          onPressed: () {
            if (UserInfo.of(context, listen: false).userRole ==
                'Photographer') {
              Weddings().confirmphotographer(
                PhotographerStatus: 'Confirmed',
                recordID: widget.record_ID,
                PhotographerName:
                    UserInfo.of(context, listen: false).userCompany,
                PhotographerEmail:
                    UserInfo.of(context, listen: false).userEmail,
              );
              setState(() {});
            } else {
              if (UserInfo.of(context, listen: false).userRole == 'Florist') {
                Weddings().confirmFlorist(
                  floristStatus: 'Confirmed',
                  floristName: UserInfo.of(context, listen: false).userCompany,
                  recordID: widget.record_ID,
                  floristEmail: UserInfo.of(context, listen: false).userEmail,
                );
                setState(() {});
              } else {
                if (UserInfo.of(context, listen: false).userRole ==
                    'Goldsmith') {
                  Weddings().confirmGoldsmith(
                    recordID: widget.record_ID,
                    goldsmithStatus: 'Confirmed',
                    goldsmithName:
                        UserInfo.of(context, listen: false).userCompany,
                    goldsmithEmail:
                        UserInfo.of(context, listen: false).userEmail,
                  );
                  setState(() {});
                } else {
                  if (UserInfo.of(context, listen: false).userRole ==
                      'Make-up artist') {
                    Weddings().confirmMakeup(
                      recordID: widget.record_ID,
                      makeupStatus: 'Confirmed',
                      makeupName:
                          UserInfo.of(context, listen: false).userCompany,
                      makeupArtistEmail:
                          UserInfo.of(context, listen: false).userEmail,
                    );
                    setState(() {});
                  } else {
                    if (UserInfo.of(context, listen: false).userRole ==
                        'Bridal') {
                      Weddings().confirmDress(
                        recordID: widget.record_ID,
                        dressStatus: 'Confirmed',
                        dressName:
                            UserInfo.of(context, listen: false).userCompany,
                        dressArtistEmail:
                            UserInfo.of(context, listen: false).userEmail,
                      );
                      setState(() {});
                    }
                  }
                }
              }
            }
            Navigator.of(context).pop<bool?>(true);
          },
          color: const Color(0xffffffff),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
              top: 10.0,
              bottom: 10.0,
            ),
            child: Text(
              'Confirm',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        )
      ],
      title: Text(
        'Are you sure?',
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xff000000), width: 1.0),
          borderRadius: BorderRadius.circular(8.0)),
      titlePadding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        top: 24.0,
        bottom: 24.0,
      ),
      actionsOverflowButtonSpacing: 444.0,
    );
  }
}
