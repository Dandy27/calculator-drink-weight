import 'package:calculator/layers/data/dto/weight_drink_dto.dart';

abstract class GetWeightDrinkEntityIdDatasource {
  WeightDrinkDto call(int id);
}
