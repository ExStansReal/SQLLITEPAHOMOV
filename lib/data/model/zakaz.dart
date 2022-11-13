import 'package:sqllitemaybe/domain/enitity/yacheyka_entity.dart';
import 'package:sqllitemaybe/domain/enitity/zakaz_entity.dart';

class zakaz extends zakaz_entity {
  zakaz({
    super.id_zakaz = 0,
    required super.id_korzina,
    required super.data_otpravki,
    required super.adress,
    required super.price_with_transport,
  });

  Map<String, dynamic> toMap() {
    return {
      'id_korzina': id_korzina.id_korzina,
      'data_otpravki': data_otpravki,
      'adress': adress,
      'price_with_transport': price_with_transport,
    };
  }

  factory zakaz.toFromMap(Map<String, dynamic> json) {
    return zakaz(
      id_zakaz: (json['id_zakaz'] as int),
      id_korzina: json['id_korzina'],
      data_otpravki: json['data_otpravki'],
      adress: json['adress'],
      price_with_transport: json['price_with_transport'],
    );
  }
}
