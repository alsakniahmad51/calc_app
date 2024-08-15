import 'package:calculation/domain/model/production_model.dart';
import 'package:calculation/domain/model/sallry_model.dart';

class MainModel {
  final String name;
  final SallaryModel sallary;
  final ProductionModel production;

  MainModel(
      {required this.name, required this.sallary, required this.production});
  Map<String, dynamic> tojson() {
    return {
      "sallary": SallaryModel.tojson(sallary: sallary),
      "production": ProductionModel.tojson(production: production)
    };
  }
}
