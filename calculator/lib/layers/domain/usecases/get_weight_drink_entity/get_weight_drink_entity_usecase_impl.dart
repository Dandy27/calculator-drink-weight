import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:calculator/layers/domain/repositories/get_weight_drink_entity_repository.dart';
import 'package:calculator/layers/domain/usecases/get_weight_drink_entity/get_weight_drink_entity_usecase.dart';
import 'package:fpdart/fpdart.dart';

class GetWeightDrinkEntityUsecaseImpl implements GetWeightDrinkEntityUsecase {
  final GetWeightDrinkEntityRepository _getWeightDrinkEntityRepository;

  GetWeightDrinkEntityUsecaseImpl(this._getWeightDrinkEntityRepository);
  @override
  Future<Either<Exception, WeightDrinkEntity>> call() {
    return _getWeightDrinkEntityRepository();
  }
}
