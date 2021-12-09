import 'package:calculator/layers/data/datasouces/local/get_weight_drink_entity_id_local_datasource_impl.dart';
import 'package:calculator/layers/data/repositories/get_weight_drink_entity_id_repository_impl.dart';
import 'package:calculator/layers/domain/usecases/get_weight_drink_entity_id/get_weight_drink_entity_id_usecase.dart';
import 'package:calculator/layers/domain/usecases/get_weight_drink_entity_id/get_weight_drink_entity_id_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return repositoryImpl', () {
    GetWeightDrinkEntityIdUsecase usecase = GetWeightDrinkEntityIdUsecaseImpl(
        GetWeightDrinkEntityIdRepositoryImpl(
            GetWeightDrinkEntityIdLocalDatasourceImpl()));
    var result = usecase(1);

    expect(result.id, 1);
  });
  test('should return isNotNull', () {
    GetWeightDrinkEntityIdUsecase usecase = GetWeightDrinkEntityIdUsecaseImpl(
        GetWeightDrinkEntityIdRepositoryImpl(
            GetWeightDrinkEntityIdLocalDatasourceImpl()));
    var result = usecase(1);
expect(result, isNotNull);
  });
}
