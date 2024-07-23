import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingrident.freezed.dart';

part 'ingrident.g.dart';

@freezed
class Ingrident with _$Ingrident {
  const factory Ingrident({
    required String imageSource,
    required String title,
    required int weight,
  }) = _Ingrident;

  factory Ingrident.fromJson(Map<String, Object?> json) => _$IngridentFromJson(json);
}