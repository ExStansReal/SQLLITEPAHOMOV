import 'package:sqllitemaybe/domain/enitity/korzina_entity.dart';
import 'package:sqllitemaybe/domain/enitity/sklad_entity.dart';

class zakaz_entity {
  late int id_zakaz;
  final korzina_entity id_korzina;
  final String data_otpravki;
  final String adress;
  final int price_with_transport;

  zakaz_entity({
    this.id_zakaz = 0,
    required this.id_korzina,
    required this.data_otpravki,
    required this.adress,
    required this.price_with_transport,
  });
}
