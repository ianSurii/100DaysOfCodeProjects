import 'package:json_annotation/json_annotation.dart';

import 'batters_model.dart';

part 'bakery_model.g.dart';

@JsonSerializable()
class Bakery extends Object {
  String id;
  List<String> type;
  String name;
  double ppu;

  @JsonKey(name: 'batters')
  BatterItem batter;

  Bakery(
      {required this.id,
      required this.type,
      required this.name,
      required this.ppu,
      required this.batter});

  factory Bakery.fromJson(Map<String, dynamic> json) => _$BakeryFromJson(json);
  Map<String, dynamic> toJson() => _$BakeryToJson(this);
}
