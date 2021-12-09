import 'package:calculator/layers/data/dto/weight_drink_dto.dart';
import 'package:fpdart/fpdart.dart';

abstract class GetWeightDrinkEntityIdDatasource {
  Future<Either<Exception, WeightDrinkDto>> call(int id);
}
