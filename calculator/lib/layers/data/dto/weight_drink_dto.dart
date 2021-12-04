import 'dart:convert';

import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';

class WeightDrinkDto extends WeightDrinkEntity {
  int identification;
  String product;
  double number;
  double gross;
  double taretare;
  double openBottle;
  WeightDrinkDto({
    required this.identification,
    required this.product,
    required this.number,
    required this.gross,
    required this.taretare,
    required this.openBottle,
  }) : super(
            id: identification,
            productName: product,
            numberOfDoses: number,
            grossWeight: gross,
            tare: taretare,
            openBottleWeight: openBottle);

  Map<String, dynamic> toMap() {
    return {
      'identification': identification,
      'product': product,
      'number': number,
      'gross': gross,
      'taretare': taretare,
      'openBottle': openBottle,
    };
  }

  factory WeightDrinkDto.fromMap(Map<String, dynamic> map) {
    return WeightDrinkDto(
      identification: map['identification'],
      product: map['product'],
      number: map['number'],
      gross: map['gross'],
      taretare: map['taretare'],
      openBottle: map['openBottle'],
    );
  }

  String toJson() => json.encode(toMap());

  factory WeightDrinkDto.fromJson(String source) =>
      WeightDrinkDto.fromMap(json.decode(source));
}
