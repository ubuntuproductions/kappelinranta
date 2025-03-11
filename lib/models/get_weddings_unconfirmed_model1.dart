import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class GetWeddingsUnconfirmedModel1 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const GetWeddingsUnconfirmedModel1(
      {this.code, this.success, this.data, this.message});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory GetWeddingsUnconfirmedModel1.fromJson(
      {required Map<String, dynamic> json}) {
    return GetWeddingsUnconfirmedModel1(
      code: json['code'],
      success: json['success'],
      data: Data7.fromJson(json: json['data'] ?? {}),
      message: json['message'],
    );
  }

  final int? code;

  final bool? success;

  final Data7? data;

  final String? message;

  @NowaGenerated({'loader': 'auto-copy-with'})
  GetWeddingsUnconfirmedModel1 copyWith(
      {int? code, bool? success, Data7? data, String? message}) {
    return GetWeddingsUnconfirmedModel1(
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
class Data7 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Data7({this.total, this.records, this.pageNum, this.pageSize});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Data7.fromJson({required Map<String, dynamic> json}) {
    return Data7(
      total: json['total'],
      records: json['records']
          ?.map<RecordsItem8?>(
              (element) => RecordsItem8.fromJson(json: element!))
          ?.toList(),
      pageNum: json['pageNum'],
      pageSize: json['pageSize'],
    );
  }

  final int? total;

  final List<RecordsItem8?>? records;

  final int? pageNum;

  final int? pageSize;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Data7 copyWith(
      {int? total, List<RecordsItem8?>? records, int? pageNum, int? pageSize}) {
    return Data7(
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
class RecordsItem8 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RecordsItem8(
      {this.recordId, this.createdAt, this.updatedAt, this.fields});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RecordsItem8.fromJson({required Map<String, dynamic> json}) {
    return RecordsItem8(
      recordId: json['recordId'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      fields: Fields8.fromJson(json: json['fields'] ?? {}),
    );
  }

  final String? recordId;

  final int? createdAt;

  final int? updatedAt;

  final Fields8? fields;

  @NowaGenerated({'loader': 'auto-copy-with'})
  RecordsItem8 copyWith(
      {String? recordId, int? createdAt, int? updatedAt, Fields8? fields}) {
    return RecordsItem8(
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
class Fields8 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Fields8(
      {this.goldsmithStatus,
      this.floristStatus,
      this.driveDoc,
      this.weddingDate,
      this.photographerStatus,
      this.preliminaryNotes,
      this.package,
      this.weddingDressStatus,
      this.status,
      this.couplesNames,
      this.makeUpArtistStatus});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Fields8.fromJson({required Map<String, dynamic> json}) {
    return Fields8(
      goldsmithStatus: json['Goldsmith status'],
      floristStatus: json['Florist status'],
      driveDoc: json['Drive doc'],
      weddingDate: json['Wedding date'],
      photographerStatus: json['Photographer status'],
      preliminaryNotes: json['Preliminary notes'],
      package: json['Package'],
      weddingDressStatus: json['Wedding dress status'],
      status: json['Status'],
      couplesNames: json['Couples names'],
      makeUpArtistStatus: json['Make-up artist status'],
    );
  }

  @NowaGenerated({'key': 'Goldsmith status'})
  final String? goldsmithStatus;

  @NowaGenerated({'key': 'Florist status'})
  final String? floristStatus;

  @NowaGenerated({'key': 'Drive doc'})
  final String? driveDoc;

  @NowaGenerated({'key': 'Wedding date'})
  final String? weddingDate;

  @NowaGenerated({'key': 'Photographer status'})
  final String? photographerStatus;

  @NowaGenerated({'key': 'Preliminary notes'})
  final String? preliminaryNotes;

  @NowaGenerated({'key': 'Package'})
  final String? package;

  @NowaGenerated({'key': 'Wedding dress status'})
  final String? weddingDressStatus;

  @NowaGenerated({'key': 'Status'})
  final String? status;

  @NowaGenerated({'key': 'Couples names'})
  final String? couplesNames;

  @NowaGenerated({'key': 'Make-up artist status'})
  final String? makeUpArtistStatus;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Fields8 copyWith(
      {String? goldsmithStatus,
      String? floristStatus,
      String? driveDoc,
      String? weddingDate,
      String? photographerStatus,
      String? preliminaryNotes,
      String? package,
      String? weddingDressStatus,
      String? status,
      String? couplesNames,
      String? makeUpArtistStatus}) {
    return Fields8(
      goldsmithStatus: goldsmithStatus ?? this.goldsmithStatus,
      floristStatus: floristStatus ?? this.floristStatus,
      driveDoc: driveDoc ?? this.driveDoc,
      weddingDate: weddingDate ?? this.weddingDate,
      photographerStatus: photographerStatus ?? this.photographerStatus,
      preliminaryNotes: preliminaryNotes ?? this.preliminaryNotes,
      package: package ?? this.package,
      weddingDressStatus: weddingDressStatus ?? this.weddingDressStatus,
      status: status ?? this.status,
      couplesNames: couplesNames ?? this.couplesNames,
      makeUpArtistStatus: makeUpArtistStatus ?? this.makeUpArtistStatus,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'Goldsmith status': goldsmithStatus,
      'Florist status': floristStatus,
      'Drive doc': driveDoc,
      'Wedding date': weddingDate,
      'Photographer status': photographerStatus,
      'Preliminary notes': preliminaryNotes,
      'Package': package,
      'Wedding dress status': weddingDressStatus,
      'Status': status,
      'Couples names': couplesNames,
      'Make-up artist status': makeUpArtistStatus,
    };
  }
}
