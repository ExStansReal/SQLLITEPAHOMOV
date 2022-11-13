import 'package:sqllitemaybe/domain/enitity/tovar_entity.dart';
import 'package:sqllitemaybe/domain/enitity/yacheyka_entity.dart';

class mesto_hraneniya_entity {
  late int id_mesto;
  final yacheyka_entity id_yacheyka;
  final tovar_entity id_tovar;
  final String data_hreneniya;

  mesto_hraneniya_entity({
    this.id_mesto = 0,
    required this.id_yacheyka,
    required this.id_tovar,
    required this.data_hreneniya,
  });
}
