import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

import 'volume_info.dart';
part 'bookmodel.g.dart';

@HiveType(typeId: 0)
class Bookmodel extends Equatable {
  @HiveField(1)
  final String? kind;
  @HiveField(2)
  final String? id;

  @HiveField(3)
  final String? etag;
  @HiveField(4)
  final String? selfLink;
  @HiveField(5)
  final VolumeInfo? volumeInfo;
  @HiveField(6)
  final double price;
  @HiveField(7)
  int? quantity;

  Bookmodel({
    this.price = 100,
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.quantity = 1,
  });

  factory Bookmodel.fromJson(Map<String, dynamic> json) => Bookmodel(
    kind: json['kind'] as String?,
    id: json['id'] as String?,
    etag: json['etag'] as String?,
    selfLink: json['selfLink'] as String?,
    volumeInfo: VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'kind': kind,
    'id': id,
    'etag': etag,
    'selfLink': selfLink,
    'volumeInfo': volumeInfo?.toJson(),
  };

  @override
  List<Object?> get props {
    return [kind, id, etag, selfLink, volumeInfo, price, quantity];
  }
}
