import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class GetUserInfoModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const GetUserInfoModel({this.code, this.success, this.data, this.message});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory GetUserInfoModel.fromJson({required Map<String, dynamic> json}) {
    return GetUserInfoModel(
      code: json['code'],
      success: json['success'],
      data: Data6.fromJson(json: json['data'] ?? {}),
      message: json['message'],
    );
  }

  final int? code;

  final bool? success;

  final Data6? data;

  final String? message;

  @NowaGenerated({'loader': 'auto-copy-with'})
  GetUserInfoModel copyWith(
      {int? code, bool? success, Data6? data, String? message}) {
    return GetUserInfoModel(
      code: code ?? this.code,
      success: success ?? this.success,
      data: data ?? this.data,
      message: message ?? this.message,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'success': success,
      'data': data?.toJson(),
      'message': message,
    };
  }
}

@NowaGenerated()
class Data6 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Data6({this.total, this.records, this.pageNum, this.pageSize});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Data6.fromJson({required Map<String, dynamic> json}) {
    return Data6(
      total: json['total'],
      records: json['records']
          ?.map<RecordsItem7?>(
              (element) => RecordsItem7.fromJson(json: element))
          ?.toList(),
      pageNum: json['pageNum'],
      pageSize: json['pageSize'],
    );
  }

  final int? total;

  final List<RecordsItem7?>? records;

  final int? pageNum;

  final int? pageSize;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Data6 copyWith(
      {int? total, List<RecordsItem7?>? records, int? pageNum, int? pageSize}) {
    return Data6(
      total: total ?? this.total,
      records: records ?? this.records,
      pageNum: pageNum ?? this.pageNum,
      pageSize: pageSize ?? this.pageSize,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'records': records?.map((element) => element!.toJson()).toList(),
      'pageNum': pageNum,
      'pageSize': pageSize,
    };
  }
}

@NowaGenerated()
class RecordsItem7 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RecordsItem7(
      {this.recordId, this.createdAt, this.updatedAt, this.fields});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RecordsItem7.fromJson({required Map<String, dynamic> json}) {
    return RecordsItem7(
      recordId: json['recordId'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      fields: Fields7.fromJson(json: json['fields'] ?? {}),
    );
  }

  final String? recordId;

  final int? createdAt;

  final int? updatedAt;

  final Fields7? fields;

  @NowaGenerated({'loader': 'auto-copy-with'})
  RecordsItem7 copyWith(
      {String? recordId, int? createdAt, int? updatedAt, Fields7? fields}) {
    return RecordsItem7(
      recordId: recordId ?? this.recordId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      fields: fields ?? this.fields,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'recordId': recordId,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'fields': fields?.toJson(),
    };
  }
}

@NowaGenerated()
class Fields7 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Fields7({this.email, this.firstName, this.category, this.lastName});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Fields7.fromJson({required Map<String, dynamic> json}) {
    return Fields7(
      email: json['Email'],
      firstName: json['First Name'],
      category: json['Category'],
      lastName: json['Last name'],
    );
  }

  @NowaGenerated({'key': 'Email'})
  final String? email;

  @NowaGenerated({'key': 'First Name'})
  final String? firstName;

  @NowaGenerated({'key': 'Category'})
  final String? category;

  @NowaGenerated({'key': 'Last name'})
  final String? lastName;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Fields7 copyWith(
      {String? email, String? firstName, String? category, String? lastName}) {
    return Fields7(
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      category: category ?? this.category,
      lastName: lastName ?? this.lastName,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'Email': email,
      'First Name': firstName,
      'Category': category,
      'Last name': lastName,
    };
  }
}
