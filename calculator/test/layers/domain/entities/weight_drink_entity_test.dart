import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tWeightDrink = WeightDrinkEntity(
      id: 0,
      productName: 'Tequila',
      numberOfDoses: 12,
      grossWeight: 1200,
      tare: 487.5,
      openBottleWeight: 660);
  test('should return calculator', () {
    final result = tWeightDrink.calculate;
    expect(result, 2.91);
  });
}
