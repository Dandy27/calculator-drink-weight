import 'package:calculator/layers/data/datasouces/remoto/get_weight_drink_datasource.dart';
import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:calculator/layers/domain/repositories/get_weight_drink_entity_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetWeightDrinkEntityRepositoryImpl
    implements GetWeightDrinkEntityRepository {
  final GetWeightDrinkDatasource _getWeightDrinkDatasource;

  GetWeightDrinkEntityRepositoryImpl(this._getWeightDrinkDatasource);
  @override
  Future<Either<Exception, WeightDrinkEntity>> call(int id) {
    return _getWeightDrinkDatasource(id);
  }
}
