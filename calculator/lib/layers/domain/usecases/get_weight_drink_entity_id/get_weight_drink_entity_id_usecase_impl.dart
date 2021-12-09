import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:calculator/layers/domain/repositories/get_weight_drink_entity_id_repository.dart';
import 'package:calculator/layers/domain/usecases/get_weight_drink_entity_id/get_weight_drink_entity_id_usecase.dart';
import 'package:fpdart/fpdart.dart';

class GetWeightDrinkEntityIdUsecaseImpl
    implements GetWeightDrinkEntityIdUsecase {
  final GetWeightDrinkEntityIdRepository _getWeightDrinkEntityIdRepository;

  GetWeightDrinkEntityIdUsecaseImpl(this._getWeightDrinkEntityIdRepository);
  @override
  Future<Either<Exception, WeightDrinkEntity>> call(int id) {
    return _getWeightDrinkEntityIdRepository(id);
  }
}
