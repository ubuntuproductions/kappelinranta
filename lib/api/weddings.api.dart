import 'package:dio/dio.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:kappelinranta/models/get_weddings_unconfirmed_model1.dart';
import 'package:kappelinranta/models/get_all_weddings_confirmed_model.dart';
import 'package:kappelinranta/models/get_wedding_model.dart';

@NowaGenerated({'editor': 'api'})
class Weddings {
  factory Weddings() {
    return _instance;
  }

  Weddings._();

  static final Weddings _instance = Weddings._();

  final Dio _dioClient = Dio(BaseOptions(
      baseUrl: 'https://aitable.ai/fusion/v1/',
      headers: {'Authorization': 'Bearer uskpicTylvuhbueQZlRZUDD'}));

  @NowaGenerated({'loader': 'api_client_getter'})
  Dio get dioClient {
    return _dioClient;
  }

  Future<Response<dynamic>> confirmDress(
      {String? recordID = '',
      String? dressStatus = '',
      String? dressName = '',
      String? dressArtistEmail = ''}) async {
    final Response res = await dioClient.patch(
      'datasheets/dstTnXmrf10yULfW3p/records',
      options: Options(headers: {'Content-Type': 'application/json'}),
      data:
          '{\n    "records": [\n        {\n            "recordId": "${recordID}",\n            "fields": {\n                "Wedding dress status": "${dressStatus}",\n                "Wedding dress name": "${dressName}",\n                "Wedding dress artist email": "${dressArtistEmail}"\n            }\n        }\n    ],\n    "fieldKey": "name"\n}',
    );
    return res;
  }

  Future<Response<dynamic>> confirmMakeup(
      {String? recordID = '',
      String? makeupStatus = '',
      String? makeupName = '',
      String? makeupArtistEmail = ''}) async {
    final Response res = await dioClient.patch(
      'datasheets/dstTnXmrf10yULfW3p/records',
      data:
          '{\n    "records": [\n        {\n            "recordId": "${recordID}",\n            "fields": {\n                "Make-up artist status": "${makeupStatus}",\n                "Make-up artist name": "${makeupName}",\n                "Make-up artist email": "${makeupArtistEmail}"\n            }\n        }\n    ],\n    "fieldKey": "name"\n}',
      options: Options(headers: {'Content-Type': 'application/json'}),
    );
    return res;
  }

  Future<Response<dynamic>> confirmGoldsmith(
      {String? recordID = '',
      String? goldsmithStatus = '',
      String? goldsmithName = '',
      String? goldsmithEmail = ''}) async {
    final Response res = await dioClient.patch(
      'datasheets/dstTnXmrf10yULfW3p/records',
      options: Options(headers: {'Content-Type': 'application/json'}),
      data:
          '{\n    "records": [\n        {\n            "recordId": "${recordID}",\n            "fields": {\n                "Goldsmith status": "${goldsmithStatus}",\n                "Goldsmith name": "${goldsmithName}",\n                "Goldsmith email": "${goldsmithEmail}"\n            }\n        }\n    ],\n    "fieldKey": "name"\n}',
    );
    return res;
  }

  Future<Response<dynamic>> confirmFlorist(
      {String? floristStatus = '',
      String? floristName = '',
      String? recordID = '',
      String? floristEmail = ''}) async {
    final Response res = await dioClient.patch(
      'datasheets/dstTnXmrf10yULfW3p/records',
      options: Options(headers: {'Content-Type': 'application/json'}),
      data:
          '{\n    "records": [\n        {\n            "recordId": "${recordID}",\n            "fields": {\n                "Florist status": "${floristStatus}",\n                "Florist name": "${floristName}",\n                "Florist email": "${floristEmail}"\n            }\n        }\n    ],\n    "fieldKey": "name"\n}',
    );
    return res;
  }

  Future<GetWeddingModel?> getWedding({String? record_ID_request = ''}) async {
    final Response res = await dioClient.get(
        'datasheets/dstTnXmrf10yULfW3p/records?&cellFormat=string&recordIds=${record_ID_request}',
        options: Options(headers: {}));
    return GetWeddingModel.fromJson(json: res.data!);
  }

  Future<GetAllWeddingsConfirmedModel?> getAllWeddingsConfirmed() async {
    final Response res = await dioClient.get(
        'datasheets/dstTnXmrf10yULfW3p/records?&cellFormat=string&filterByFormula={Status}="Confirmed"&sort={"field": "Wedding date", "order": "asc"}&viewId=viwcab5zDVZaH&fieldKey=name',
        options: Options(headers: {}));
    return GetAllWeddingsConfirmedModel.fromJson(json: res.data!);
  }

  Future<GetWeddingsUnconfirmedModel1?> getWeddingsUnconfirmed() async {
    final Response res = await dioClient.get(
        'datasheets/dstTnXmrf10yULfW3p/records?&cellFormat=string&filterByFormula={Status}="Under negotiation"&sort={"field": "Wedding date", "order": "asc"}&viewId=viwcab5zDVZaH&fieldKey=name',
        options: Options(headers: {}));
    return GetWeddingsUnconfirmedModel1.fromJson(json: res.data!);
  }

  Future<Response<dynamic>> confirmphotographer(
      {String? PhotographerStatus = '',
      String? PhotographerName = '',
      String? recordID = '',
      String? PhotographerEmail = ''}) async {
    final Response res = await dioClient.patch(
      'datasheets/dstTnXmrf10yULfW3p/records',
      data:
          '{\n    "records": [\n        {\n            "recordId": "${recordID}",\n            "fields": {\n                "Photographer status": "${PhotographerStatus}",\n                "Photographer name": "${PhotographerName}",\n                "Photographer email": "${PhotographerEmail}"\n            }\n        }\n    ],\n    "fieldKey": "name"\n}',
      options: Options(headers: {'Content-Type': 'application/json'}),
    );
    return res;
  }
}
