import 'package:calculator/layers/domain/entities/weight_drink_entity.dart';
import 'package:calculator/layers/domain/repositories/get_drink_weight_repository.dart';
import 'package:calculator/layers/domain/usecases/get_weight_drink_entity/get_weight_drink_entity_usecase.dart';
import 'package:fpdart/fpdart.dart';

class GetWeightDrinkEntityUsecaseImpl implements GetWeightDrinkEntityUsecase {
  final GetDrinkWeightRepository _getDrinkWeightRepository;

  GetWeightDrinkEntityUsecaseImpl(this._getDrinkWeightRepository);
  @override
  Future<Either<Exception, WeightDrinkEntity>> call(
      WeightDrinkEntity weightDrinkEntity) {
    return _getDrinkWeightRepository(weightDrinkEntity);
  }
}
