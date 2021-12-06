import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return entity isNotNull', () {
    final weightDrinkentity = WeightDrinkEntity(
        id: 1,
        productName: 'Tequila',
        numberOfDoses: 12,
        grossWeight: 1200,
        tare: 487.5,
        openBottleWeight: 660);
    expect(weightDrinkentity, isNotNull);
  });
  test('should return calculator ', () {
    final weightDrinkentity = WeightDrinkEntity(
        id: 1,
        productName: 'Tequila',
        numberOfDoses: 12,
        grossWeight: 1200,
        tare: 487.5,
        openBottleWeight: 660);
    expect(weightDrinkentity.calculate, 2.91);
  });
}
