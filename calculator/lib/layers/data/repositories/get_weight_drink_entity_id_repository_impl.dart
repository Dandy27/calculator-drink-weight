import 'package:calculator/layers/data/datasouces/get_weight_drink_entity_id_datasource.dart';
import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:calculator/layers/domain/repositories/get_weight_drink_entity_id_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetWeightDrinkEntityIdRepositoryImpl
    implements GetWeightDrinkEntityIdRepository {
  final GetWeightDrinkEntityIdDatasource _getWeightDrinkEntityIdDatasource;

  GetWeightDrinkEntityIdRepositoryImpl(this._getWeightDrinkEntityIdDatasource);
  @override
 Future<Either<Exception, WeightDrinkEntity>> call(int id) {
    return _getWeightDrinkEntityIdDatasource(id);
  }
}
