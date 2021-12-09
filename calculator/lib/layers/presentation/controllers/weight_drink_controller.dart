import 'package:calculator/layers/domain/usecases/get_weight_drink_entity_id/get_weight_drink_entity_id_usecase.dart';

class WeightDrinkController {
  final GetWeightDrinkEntityIdUsecase _getWeightDrinkEntityIdUsecase;

  WeightDrinkController(this._getWeightDrinkEntityIdUsecase){
    getWeightDrinkId(int , 1);
  }

  void getWeightDrinkId(Type int, id) {
    var result = _getWeightDrinkEntityIdUsecase(id);
    
  }
  
 

}



