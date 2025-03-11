import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@NowaGenerated()
class UserInfo extends ChangeNotifier {
  UserInfo();

  factory UserInfo.of(BuildContext context, {bool listen = true}) {
    return Provider.of<UserInfo>(context, listen: listen);
  }

  String? userEmail = '';

  String? userName = 'WeddingDate';

  String? userLastName = '';

  String? userRole = '';

  String? userCompany = '';
}
