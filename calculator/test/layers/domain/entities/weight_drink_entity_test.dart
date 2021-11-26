import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final weightDrinkEntity = WeightDrinkEntity(
      id: 1,
      productName: 'Tequila',
      numberOfDoses: 12,
      grossWeight: 1200,
      tare: 487.5,
      openBottleWeight: 660);

  test('Should return entity WeightDrinkEntity', () {
    expect(weightDrinkEntity.calculate, 2.91);
  });
}
