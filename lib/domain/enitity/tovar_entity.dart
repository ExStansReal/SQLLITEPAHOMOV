import 'package:sqllitemaybe/domain/enitity/sklad_entity.dart';
import 'package:sqllitemaybe/domain/enitity/type_tovar_entity.dart';

class tovar_entity {
  late int id_tovar;
  final type_tovar_entity id_Type_tovar;
  final String name;
  final int price_for_one_stuka;

  tovar_entity({
    this.id_tovar = 0,
    required this.id_Type_tovar,
    required this.name,
    required this.price_for_one_stuka,
  });
}
