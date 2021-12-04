import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class GetWeightDrinkEntityUsecase {
  Future<Either<Exception, WeightDrinkEntity>> call(int id  );
}
