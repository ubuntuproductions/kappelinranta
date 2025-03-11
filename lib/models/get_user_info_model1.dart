import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class GetUserInfoModel1 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const GetUserInfoModel1({this.code, this.success, this.data, this.message});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory GetUserInfoModel1.fromJson({required Map<String, dynamic> json}) {
    return GetUserInfoModel1(
      code: json['code'],
      success: json['success'],
      data: Data1.fromJson(json: json['data'] ?? {}),
      message: json['message'],
    );
  }

  final int? code;

  final bool? success;

  final Data1? data;

  final String? message;

  @NowaGenerated({'loader': 'auto-copy-with'})
  GetUserInfoModel1 copyWith(
      {int? code, bool? success, Data1? data, String? message}) {
    return GetUserInfoModel1(
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
class Data1 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Data1({this.total, this.records, this.pageNum, this.pageSize});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Data1.fromJson({required Map<String, dynamic> json}) {
    return Data1(
      total: json['total'],
      records: json['records']
          ?.map<RecordsItem1?>(
              (element) => RecordsItem1.fromJson(json: element))
          ?.toList(),
      pageNum: json['pageNum'],
      pageSize: json['pageSize'],
    );
  }

  final int? total;

  final List<RecordsItem1?>? records;

  final int? pageNum;

  final int? pageSize;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Data1 copyWith(
      {int? total, List<RecordsItem1?>? records, int? pageNum, int? pageSize}) {
    return Data1(
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
class RecordsItem1 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RecordsItem1(
      {this.recordId, this.createdAt, this.updatedAt, this.fields});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RecordsItem1.fromJson({required Map<String, dynamic> json}) {
    return RecordsItem1(
      recordId: json['recordId'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      fields: Fields1.fromJson(json: json['fields'] ?? {}),
    );
  }

  final String? recordId;

  final int? createdAt;

  final int? updatedAt;

  final Fields1? fields;

  @NowaGenerated({'loader': 'auto-copy-with'})
  RecordsItem1 copyWith(
      {String? recordId, int? createdAt, int? updatedAt, Fields1? fields}) {
    return RecordsItem1(
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
class Fields1 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Fields1(
      {this.companyName,
      this.email,
      this.firstName,
      this.category,
      this.lastName});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Fields1.fromJson({required Map<String, dynamic> json}) {
    return Fields1(
      companyName: json['Company name'],
      email: json['Email'],
      firstName: json['First Name'],
      category: json['Category'],
      lastName: json['Last name'],
    );
  }

  @NowaGenerated({'key': 'Company name'})
  final String? companyName;

  @NowaGenerated({'key': 'Email'})
  final String? email;

  @NowaGenerated({'key': 'First Name'})
  final String? firstName;

  @NowaGenerated({'key': 'Category'})
  final String? category;

  @NowaGenerated({'key': 'Last name'})
  final String? lastName;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Fields1 copyWith(
      {String? companyName,
      String? email,
      String? firstName,
      String? category,
      String? lastName}) {
    return Fields1(
      companyName: companyName ?? this.companyName,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      category: category ?? this.category,
      lastName: lastName ?? this.lastName,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'Company name': companyName,
      'Email': email,
      'First Name': firstName,
      'Category': category,
      'Last name': lastName,
    };
  }
}
