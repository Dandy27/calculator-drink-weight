import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:calculator/layers/domain/errors/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class GetDrinkWeightRepository {
  Future<Either<WeightDrinkException, WeightDrinkEntity>> call(
      WeightDrinkEntity weightDrinkEntity);
}
