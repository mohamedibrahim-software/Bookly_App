import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable {
  final String? country;

  const SaleInfo({this.country});

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      SaleInfo(country: json['country'] as String?);

  Map<String, dynamic> toJson() => {'country': country};

  @override
  List<Object?> get props => [country];
}
