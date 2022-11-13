import 'package:sqllitemaybe/domain/enitity/sklad_entity.dart';

class Sklad extends SkladEntity {
  Sklad(
      {super.id_sklad = 0,
      required super.adress,
      required super.count_of_space});

  Map<String, dynamic> toMap() {
    return {'adress': adress, 'count_of_space': count_of_space};
  }

  factory Sklad.toFromMap(Map<String, dynamic> json) {
    return Sklad(
        adress: json['adress'], count_of_space: json['count_of_space']);
  }
}
