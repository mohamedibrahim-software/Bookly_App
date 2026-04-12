import 'package:equatable/equatable.dart';

import 'epub.dart';
import 'pdf.dart';

class AccessInfo extends Equatable {
  final String? country;
  final Epub? epub;
  final Pdf? pdf;
  final String? accessViewStatus;

  const AccessInfo({this.country, this.epub, this.pdf, this.accessViewStatus});

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
    country: json['country'] as String?,
    epub: json['epub'] == null
        ? null
        : Epub.fromJson(json['epub'] as Map<String, dynamic>),
    pdf: json['pdf'] == null
        ? null
        : Pdf.fromJson(json['pdf'] as Map<String, dynamic>),
    accessViewStatus: json['accessViewStatus'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'country': country,
    'epub': epub?.toJson(),
    'pdf': pdf?.toJson(),
    'accessViewStatus': accessViewStatus,
  };

  @override
  List<Object?> get props => [country, epub, pdf, accessViewStatus];
}
