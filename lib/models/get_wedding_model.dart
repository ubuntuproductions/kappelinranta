import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class GetWeddingModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const GetWeddingModel({this.code, this.success, this.data, this.message});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory GetWeddingModel.fromJson({required Map<String, dynamic> json}) {
    return GetWeddingModel(
      code: json['code'],
      success: json['success'],
      data: Data.fromJson(json: json['data'] ?? {}),
      message: json['message'],
    );
  }

  final int? code;

  final bool? success;

  final Data? data;

  final String? message;

  @NowaGenerated({'loader': 'auto-copy-with'})
  GetWeddingModel copyWith(
      {int? code, bool? success, Data? data, String? message}) {
    return GetWeddingModel(
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
class Data {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Data({this.total, this.records, this.pageNum, this.pageSize});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Data.fromJson({required Map<String, dynamic> json}) {
    return Data(
      total: json['total'],
      records: json['records']
          ?.map<RecordsItem?>((element) => RecordsItem.fromJson(json: element))
          ?.toList(),
      pageNum: json['pageNum'],
      pageSize: json['pageSize'],
    );
  }

  final int? total;

  final List<RecordsItem?>? records;

  final int? pageNum;

  final int? pageSize;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Data copyWith(
      {int? total, List<RecordsItem?>? records, int? pageNum, int? pageSize}) {
    return Data(
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
class RecordsItem {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RecordsItem(
      {this.recordId, this.createdAt, this.updatedAt, this.fields});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RecordsItem.fromJson({required Map<String, dynamic> json}) {
    return RecordsItem(
      recordId: json['recordId'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      fields: Fields.fromJson(json: json['fields'] ?? {}),
    );
  }

  final String? recordId;

  final int? createdAt;

  final int? updatedAt;

  final Fields? fields;

  @NowaGenerated({'loader': 'auto-copy-with'})
  RecordsItem copyWith(
      {String? recordId, int? createdAt, int? updatedAt, Fields? fields}) {
    return RecordsItem(
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
class Fields {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Fields(
      {this.goldsmithStatus,
      this.floristStatus,
      this.makeUpArtistName,
      this.driveDoc,
      this.weddingDate,
      this.photographerStatus,
      this.preliminaryNotes,
      this.package,
      this.photographerName,
      this.goldsmithName,
      this.weddingDressStatus,
      this.status,
      this.floristName,
      this.couplesNames,
      this.makeUpArtistStatus,
      this.weddingDressName});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Fields.fromJson({required Map<String, dynamic> json}) {
    return Fields(
      goldsmithStatus: json['Goldsmith status'],
      floristStatus: json['Florist status'],
      makeUpArtistName: json['Make-up artist name'],
      driveDoc: json['Drive doc'],
      weddingDate: json['Wedding date'],
      photographerStatus: json['Photographer status'],
      preliminaryNotes: json['Preliminary notes'],
      package: json['Package'],
      photographerName: json['Photographer name'],
      goldsmithName: json['Goldsmith name'],
      weddingDressStatus: json['Wedding dress status'],
      status: json['Status'],
      floristName: json['Florist name'],
      couplesNames: json['Couples names'],
      makeUpArtistStatus: json['Make-up artist status'],
      weddingDressName: json['Wedding dress name'],
    );
  }

  @NowaGenerated({'key': 'Goldsmith status'})
  final String? goldsmithStatus;

  @NowaGenerated({'key': 'Florist status'})
  final String? floristStatus;

  @NowaGenerated({'key': 'Make-up artist name'})
  final String? makeUpArtistName;

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

  @NowaGenerated({'key': 'Photographer name'})
  final String? photographerName;

  @NowaGenerated({'key': 'Goldsmith name'})
  final String? goldsmithName;

  @NowaGenerated({'key': 'Wedding dress status'})
  final String? weddingDressStatus;

  @NowaGenerated({'key': 'Status'})
  final String? status;

  @NowaGenerated({'key': 'Florist name'})
  final String? floristName;

  @NowaGenerated({'key': 'Couples names'})
  final String? couplesNames;

  @NowaGenerated({'key': 'Make-up artist status'})
  final String? makeUpArtistStatus;

  @NowaGenerated({'key': 'Wedding dress name'})
  final String? weddingDressName;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Fields copyWith(
      {String? goldsmithStatus,
      String? floristStatus,
      String? makeUpArtistName,
      String? driveDoc,
      String? weddingDate,
      String? photographerStatus,
      String? preliminaryNotes,
      String? package,
      String? photographerName,
      String? goldsmithName,
      String? weddingDressStatus,
      String? status,
      String? floristName,
      String? couplesNames,
      String? makeUpArtistStatus,
      String? weddingDressName}) {
    return Fields(
      goldsmithStatus: goldsmithStatus ?? this.goldsmithStatus,
      floristStatus: floristStatus ?? this.floristStatus,
      makeUpArtistName: makeUpArtistName ?? this.makeUpArtistName,
      driveDoc: driveDoc ?? this.driveDoc,
      weddingDate: weddingDate ?? this.weddingDate,
      photographerStatus: photographerStatus ?? this.photographerStatus,
      preliminaryNotes: preliminaryNotes ?? this.preliminaryNotes,
      package: package ?? this.package,
      photographerName: photographerName ?? this.photographerName,
      goldsmithName: goldsmithName ?? this.goldsmithName,
      weddingDressStatus: weddingDressStatus ?? this.weddingDressStatus,
      status: status ?? this.status,
      floristName: floristName ?? this.floristName,
      couplesNames: couplesNames ?? this.couplesNames,
      makeUpArtistStatus: makeUpArtistStatus ?? this.makeUpArtistStatus,
      weddingDressName: weddingDressName ?? this.weddingDressName,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'Goldsmith status': goldsmithStatus,
      'Florist status': floristStatus,
      'Make-up artist name': makeUpArtistName,
      'Drive doc': driveDoc,
      'Wedding date': weddingDate,
      'Photographer status': photographerStatus,
      'Preliminary notes': preliminaryNotes,
      'Package': package,
      'Photographer name': photographerName,
      'Goldsmith name': goldsmithName,
      'Wedding dress status': weddingDressStatus,
      'Status': status,
      'Florist name': floristName,
      'Couples names': couplesNames,
      'Make-up artist status': makeUpArtistStatus,
      'Wedding dress name': weddingDressName,
    };
  }
}
