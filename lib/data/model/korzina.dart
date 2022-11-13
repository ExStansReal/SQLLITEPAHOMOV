import 'package:sqllitemaybe/domain/enitity/korzina_entity.dart';
import 'package:sqllitemaybe/domain/enitity/mesto_hraneniya_entity.dart';

class korzina extends korzina_entity {
  korzina(
      {super.id_korzina = 0,
      required super.id_user,
      required super.id_mesto,
      required super.data_sozdaniy,
      required super.price});

  Map<String, dynamic> toMap() {
    return {
      'id_user': id_user.id,
      'id_mesto': id_mesto.id_mesto,
      'data_sozdaniy': data_sozdaniy,
      'price': price
    };
  }

  factory korzina.toFromMap(Map<String, dynamic> json) {
    return korzina(
        id_user: json['id_user'],
        id_mesto: json['id_mesto'],
        data_sozdaniy: json['data_sozdaniy'],
        price: json['price']);
  }
}
