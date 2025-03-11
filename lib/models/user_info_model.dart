import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class UserInfoModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const UserInfoModel({this.code, this.success, this.data, this.message});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory UserInfoModel.fromJson({required Map<String, dynamic> json}) {
    return UserInfoModel(
      code: json['code'],
      success: json['success'],
      data: Data4.fromJson(json: json['data'] ?? {}),
      message: json['message'],
    );
  }

  final int? code;

  final bool? success;

  final Data4? data;

  final String? message;

  @NowaGenerated({'loader': 'auto-copy-with'})
  UserInfoModel copyWith(
      {int? code, bool? success, Data4? data, String? message}) {
    return UserInfoModel(
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
class Data4 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Data4({this.records});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Data4.fromJson({required Map<String, dynamic> json}) {
    return Data4(
        records: json['records']
            ?.map<RecordsItem5?>(
                (element) => RecordsItem5.fromJson(json: element))
            ?.toList());
  }

  final List<RecordsItem5?>? records;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Data4 copyWith({List<RecordsItem5?>? records}) {
    return Data4(records: records ?? this.records);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'records': records?.map((element) => element!.toJson()).toList()};
  }
}

@NowaGenerated()
class RecordsItem5 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RecordsItem5({this.recordId, this.fields});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RecordsItem5.fromJson({required Map<String, dynamic> json}) {
    return RecordsItem5(
        recordId: json['recordId'],
        fields: Fields5.fromJson(json: json['fields'] ?? {}));
  }

  final String? recordId;

  final Fields5? fields;

  @NowaGenerated({'loader': 'auto-copy-with'})
  RecordsItem5 copyWith({String? recordId, Fields5? fields}) {
    return RecordsItem5(
        recordId: recordId ?? this.recordId, fields: fields ?? this.fields);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'recordId': recordId, 'fields': fields?.toJson()};
  }
}

@NowaGenerated()
class Fields5 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Fields5({this.email, this.firstName, this.category, this.lastName});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Fields5.fromJson({required Map<String, dynamic> json}) {
    return Fields5(
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
  Fields5 copyWith(
      {String? email, String? firstName, String? category, String? lastName}) {
    return Fields5(
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
