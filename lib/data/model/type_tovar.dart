import 'package:sqllitemaybe/domain/enitity/type_tovar_entity.dart';

class type_tovar extends type_tovar_entity {
  type_tovar({
    required super.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory type_tovar.toFromMap(Map<String, dynamic> json) {
    return type_tovar(name: json['name']);
  }
}
