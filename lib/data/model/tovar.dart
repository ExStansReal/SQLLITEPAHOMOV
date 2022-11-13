import 'package:sqllitemaybe/domain/enitity/tovar_entity.dart';
import 'package:sqllitemaybe/domain/enitity/type_tovar_entity.dart';
import 'package:sqllitemaybe/domain/enitity/yacheyka_entity.dart';

class tovar extends tovar_entity {
  tovar({
    super.id_tovar = 0,
    required super.id_Type_tovar,
    required super.name,
    required super.price_for_one_stuka,
  });

  Map<String, dynamic> toMap() {
    return {
      'id_Type_tovar': id_Type_tovar.id,
      'name': name,
      'price_for_one_stuka': price_for_one_stuka,
    };
  }

  factory tovar.toFromMap(Map<String, dynamic> json) {
    return tovar(
      id_tovar: (json['id_tovar'] as int),
      id_Type_tovar: type_tovar_Enum.values.firstWhere(
        (element) => element.id == (json['id_Type_tovar'] as int),
      ),
      name: json['name'],
      price_for_one_stuka: json['price_for_one_stuka'],
    );
  }
}
