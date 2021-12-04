import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:calculator/layers/domain/repositories/get_weight_drink_entity_repository.dart';
import 'package:calculator/layers/domain/usecases/get_weight_drink_entity/get_weight_drink_entity_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class GetWeightDrinkEntityUsecaseImplMock extends Mock
    implements GetWeightDrinkEntityRepository {}

void main() {
  late GetWeightDrinkEntityUsecaseImpl usecase;
  late GetWeightDrinkEntityUsecaseImplMock repository;

  setUp(() {
    repository = GetWeightDrinkEntityUsecaseImplMock();
    usecase = GetWeightDrinkEntityUsecaseImpl(repository);
  });
   final tWeightDrink = WeightDrinkEntity(
        id: 1,
        productName: 'tequila',
        numberOfDoses: 12,
        grossWeight: 1200,
        tare: 487.5,
        openBottleWeight: 660);
  test('should return weight drink entity', () {
   
    when(() => repository(any())).thenAnswer((_) async => Right(tWeightDrink));
    var result = usecase(1);
    expect(result, isNotNull);
  });
}

