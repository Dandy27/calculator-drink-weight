class WeightDrinkEntity {
  int id;
  String productName;
  double numberOfDoses;
  double grossWeight;
  double tare;

  double openBottleWeight;
  WeightDrinkEntity({
    required this.id,
    required this.productName,
    required this.numberOfDoses,
    required this.grossWeight,
    required this.tare,
    required this.openBottleWeight,
  });

  double get calculate {
    var result =
        ((openBottleWeight - tare) * numberOfDoses / (grossWeight - tare)) *
            100;
    if (numberOfDoses <= 0) {
      throw Exception('Error! numberOfDoses não pode ser menor ou igual a 0');
    }
    if (numberOfDoses > 50) {
      throw Exception('Error! NumberOfDoses não pode ser maior que 50');
    }
    if (id <= 0) {
      throw Exception('Error! Id não pode ser menor que 0');
    }
    if (openBottleWeight < tare) {
      throw Exception('Error! OpenBotleWeight não pode ser menor que a tara');
    }
    if (openBottleWeight > grossWeight) {
      throw Exception(
          ' Error! OpenBotleWeight não pode ser maior que grossWeight');
    }

    return (result.roundToDouble()) / 100;
  }
}
