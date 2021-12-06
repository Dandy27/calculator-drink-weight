import 'package:calculator/layers/data/datasouces/get_weight_drink_entity_id_datasource.dart';
import 'package:calculator/layers/data/dto/weight_drink_dto.dart';

class GetWeightDrinkEntityIdLocalDatasourceImpl
    implements GetWeightDrinkEntityIdDatasource {
  // in  memoirian
  final jsonId1 = {
    'identification': 1,
    'product': 'Tequila Prata',
    'number': 12.0,
    'gross': 1200.0,
    'taretare': 487.5,
    'openBottle': 660.0,
  };
  final jsonId2 = {
    'identification': 2,
    'product': 'Tequila ouro',
    'number': 12.0,
    'gross': 1200.0,
    'taretare': 487.5,
    'openBottle': 660.0,
  };

  @override
  WeightDrinkDto call(int id) {
    if (id == 1) {
      return WeightDrinkDto.fromMap(jsonId1);
    }
    return WeightDrinkDto.fromMap(jsonId2);
  }
}
