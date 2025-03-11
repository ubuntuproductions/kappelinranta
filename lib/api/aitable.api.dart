import 'package:dio/dio.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/models/get_user_info_model1.dart';
import 'package:kappelinranta/models/user_info_model.dart';

@NowaGenerated({'editor': 'api'})
class Aitable {
  factory Aitable() {
    return _instance;
  }

  Aitable._();

  static final Aitable _instance = Aitable._();

  final Dio _dioClient = Dio(BaseOptions(
      baseUrl: 'https://aitable.ai/fusion/v1/',
      headers: {'Authorization': 'Bearer uskpicTylvuhbueQZlRZUDD'}));

  @NowaGenerated({'loader': 'api_client_getter'})
  Dio get dioClient {
    return _dioClient;
  }

  Future<UserInfoModel?> userInfo(
      {String? email = '',
      String? FirstName = '',
      String? LastName = '',
      String? category = '',
      String? companyName = ''}) async {
    final Response res = await dioClient.post(
      'datasheets/dstUXsQoTZBBLsGJ41/records?viewId=viwJMpoBzulls&fieldKey=name',
      data:
          '{\n    "records": [\n        {\n            "fields": {\n                "Email": "${email}",\n                "First Name": "${FirstName}",\n                "Last name": "${LastName}",\n                "Company name": "${companyName}",\n                "Category": "${category}"\n            }\n        }\n    ],\n    "fieldKey": "name"\n}',
      options: Options(headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer uskpicTylvuhbueQZlRZUDD'
      }),
    );
    return UserInfoModel.fromJson(json: res.data!);
  }

  Future<GetUserInfoModel1?> getUserInfo({String? userEmail = ''}) async {
    final Response res = await dioClient.get(
        'datasheets/dstUXsQoTZBBLsGJ41/records?viewId=viwJMpoBzulls&filterByFormula={Email}="${userEmail}"');
    return GetUserInfoModel1.fromJson(json: res.data!);
  }
}
