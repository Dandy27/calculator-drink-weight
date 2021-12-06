import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';

abstract class GetWeightDrinkEntityIdRepository {
  WeightDrinkEntity call(int id);
}
