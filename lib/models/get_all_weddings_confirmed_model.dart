import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class GetAllWeddingsConfirmedModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const GetAllWeddingsConfirmedModel(
      {this.code, this.success, this.data, this.message});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory GetAllWeddingsConfirmedModel.fromJson(
      {required Map<String, dynamic> json}) {
    return GetAllWeddingsConfirmedModel(
      code: json['code'],
      success: json['success'],
      data: Data5.fromJson(json: json['data'] ?? {}),
      message: json['message'],
    );
  }

  final int? code;

  final bool? success;

  final Data5? data;

  final String? message;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'success': success,
      'data': data?.toJson(),
      'message': message,
    };
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  GetAllWeddingsConfirmedModel copyWith(
      {int? code, bool? success, Data5? data, String? message}) {
    return GetAllWeddingsConfirmedModel(
      code: code ?? this.code,
      success: success ?? this.success,
      data: data ?? this.data,
      message: message ?? this.message,
    );
  }
}

@NowaGenerated()
class Data5 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Data5({this.total, this.records, this.pageNum, this.pageSize});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Data5.fromJson({required Map<String, dynamic> json}) {
    return Data5(
      total: json['total'],
      records: json['records']
          ?.map<RecordsItem6?>(
              (element) => RecordsItem6.fromJson(json: element!))
          ?.toList(),
      pageNum: json['pageNum'],
      pageSize: json['pageSize'],
    );
  }

  final int? total;

  final List<RecordsItem6?>? records;

  final int? pageNum;

  final int? pageSize;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'records': records?.map((element) => element!.toJson()).toList(),
      'pageNum': pageNum,
      'pageSize': pageSize,
    };
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  Data5 copyWith(
      {int? total, List<RecordsItem6?>? records, int? pageNum, int? pageSize}) {
    return Data5(
      total: total ?? this.total,
      records: records ?? this.records,
      pageNum: pageNum ?? this.pageNum,
      pageSize: pageSize ?? this.pageSize,
    );
  }
}

@NowaGenerated()
class RecordsItem6 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const RecordsItem6(
      {this.recordId, this.createdAt, this.updatedAt, this.fields});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory RecordsItem6.fromJson({required Map<String, dynamic> json}) {
    return RecordsItem6(
      recordId: json['recordId'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      fields: Fields6.fromJson(json: json['fields'] ?? {}),
    );
  }

  final String? recordId;

  final int? createdAt;

  final int? updatedAt;

  final Fields6? fields;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'recordId': recordId,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'fields': fields?.toJson(),
    };
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  RecordsItem6 copyWith(
      {String? recordId, int? createdAt, int? updatedAt, Fields6? fields}) {
    return RecordsItem6(
      recordId: recordId ?? this.recordId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      fields: fields ?? this.fields,
    );
  }
}

@NowaGenerated()
class Fields6 {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Fields6(
      {this.goldsmithStatus,
      this.floristStatus,
      this.makeUpArtistName,
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
  factory Fields6.fromJson({required Map<String, dynamic> json}) {
    return Fields6(
      goldsmithStatus: json['Goldsmith status'],
      floristStatus: json['Florist status'],
      makeUpArtistName: json['Make-up artist name'],
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

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'Goldsmith status': goldsmithStatus,
      'Florist status': floristStatus,
      'Make-up artist name': makeUpArtistName,
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

  @NowaGenerated({'loader': 'auto-copy-with'})
  Fields6 copyWith(
      {String? goldsmithStatus,
      String? floristStatus,
      String? makeUpArtistName,
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
    return Fields6(
      goldsmithStatus: goldsmithStatus ?? this.goldsmithStatus,
      floristStatus: floristStatus ?? this.floristStatus,
      makeUpArtistName: makeUpArtistName ?? this.makeUpArtistName,
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
}
