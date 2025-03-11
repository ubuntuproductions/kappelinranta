import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class WeddingsModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const WeddingsModel(
      {this.couplesName = 'couplesName',
      this.packageLevel = 'packageLevel',
      this.weddingStatus = 'weddingStatus',
      this.flowersStatus = 'flowersStatus',
      this.weddingDate = 'weddingDate',
      this.photographerStatus = 'photographerStatus',
      this.goldsmithStatus = 'goldsmithStatus',
      this.makeupStatus = 'makeupStatus',
      this.dressStatus = 'dressStatus',
      this.floristName = 'floristName',
      this.photographerName = 'photographer Name',
      this.goldsmithName = 'goldsmithName',
      this.makeupArtistName = 'makeupArtistName',
      this.dressArtistName = 'dressArtistName',
      this.preeliminaryNotes = 'preeliminaryNotes',
      this.record_ID = 'record_ID'});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory WeddingsModel.fromJson({required Map<String, dynamic> json}) {
    return WeddingsModel(
      couplesName: json['couplesName'] ?? 'couplesName',
      packageLevel: json['packageLevel'] ?? 'packageLevel',
      weddingStatus: json['weddingStatus'] ?? 'weddingStatus',
      flowersStatus: json['flowersStatus'] ?? 'flowersStatus',
      weddingDate: json['weddingDate'] ?? 'weddingDate',
      photographerStatus: json['photographerStatus'] ?? 'photographerStatus',
      goldsmithStatus: json['goldsmithStatus'] ?? 'goldsmithStatus',
      makeupStatus: json['makeupStatus'] ?? 'makeupStatus',
      dressStatus: json['dressStatus'] ?? 'dressStatus',
      floristName: json['floristName'] ?? 'floristName',
      photographerName: json['photographerName'] ?? 'photographer Name',
      goldsmithName: json['goldsmithName'] ?? 'goldsmithName',
      makeupArtistName: json['makeupArtistName'] ?? 'makeupArtistName',
      dressArtistName: json['dressArtistName'] ?? 'dressArtistName',
      preeliminaryNotes: json['preeliminaryNotes'] ?? 'preeliminaryNotes',
      record_ID: json['record_ID'] ?? 'record_ID',
    );
  }

  final String? couplesName;

  final String? packageLevel;

  final String? weddingStatus;

  final String? flowersStatus;

  final String? weddingDate;

  final String? photographerStatus;

  final String? goldsmithStatus;

  final String? makeupStatus;

  final String? dressStatus;

  final String? floristName;

  final String? photographerName;

  final String? goldsmithName;

  final String? makeupArtistName;

  final String? dressArtistName;

  final String? preeliminaryNotes;

  final String? record_ID;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'couplesName': couplesName,
      'packageLevel': packageLevel,
      'weddingStatus': weddingStatus,
      'flowersStatus': flowersStatus,
      'weddingDate': weddingDate,
      'photographerStatus': photographerStatus,
      'goldsmithStatus': goldsmithStatus,
      'makeupStatus': makeupStatus,
      'dressStatus': dressStatus,
      'floristName': floristName,
      'photographerName': photographerName,
      'goldsmithName': goldsmithName,
      'makeupArtistName': makeupArtistName,
      'dressArtistName': dressArtistName,
      'preeliminaryNotes': preeliminaryNotes,
      'record_ID': record_ID,
    };
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  WeddingsModel copyWith(
      {String? couplesName,
      String? packageLevel,
      String? weddingStatus,
      String? flowersStatus,
      String? weddingDate,
      String? photographerStatus,
      String? goldsmithStatus,
      String? makeupStatus,
      String? dressStatus,
      String? floristName,
      String? photographerName,
      String? goldsmithName,
      String? makeupArtistName,
      String? dressArtistName,
      String? preeliminaryNotes,
      String? record_ID}) {
    return WeddingsModel(
      couplesName: couplesName ?? this.couplesName,
      packageLevel: packageLevel ?? this.packageLevel,
      weddingStatus: weddingStatus ?? this.weddingStatus,
      flowersStatus: flowersStatus ?? this.flowersStatus,
      weddingDate: weddingDate ?? this.weddingDate,
      photographerStatus: photographerStatus ?? this.photographerStatus,
      goldsmithStatus: goldsmithStatus ?? this.goldsmithStatus,
      makeupStatus: makeupStatus ?? this.makeupStatus,
      dressStatus: dressStatus ?? this.dressStatus,
      floristName: floristName ?? this.floristName,
      photographerName: photographerName ?? this.photographerName,
      goldsmithName: goldsmithName ?? this.goldsmithName,
      makeupArtistName: makeupArtistName ?? this.makeupArtistName,
      dressArtistName: dressArtistName ?? this.dressArtistName,
      preeliminaryNotes: preeliminaryNotes ?? this.preeliminaryNotes,
      record_ID: record_ID ?? this.record_ID,
    );
  }
}
