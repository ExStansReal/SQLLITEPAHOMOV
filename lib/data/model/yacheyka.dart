import 'package:sqllitemaybe/domain/enitity/yacheyka_entity.dart';

class yacheyka extends yacheyka_entity {
  yacheyka({
    super.id = 0,
    required super.abyom,
    required super.nomer,
    required super.idSklad,
  });

  Map<String, dynamic> toMap() {
    return {
      'abyom': abyom,
      'nomer': nomer,
      'idSklad': idSklad.id_sklad,
    };
  }

  factory yacheyka.toFromMap(Map<String, dynamic> json) {
    return yacheyka(
      id: (json['id'] as int),
      abyom: json['abyom'],
      nomer: json['nomer'],
      idSklad: json['idSklad'],
    );
  }
}
