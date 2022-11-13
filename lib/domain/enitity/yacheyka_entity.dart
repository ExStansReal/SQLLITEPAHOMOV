import 'package:sqllitemaybe/domain/enitity/sklad_entity.dart';

class yacheyka_entity {
  late int id;
  final String abyom;
  final String nomer;
  final SkladEntity idSklad;

  yacheyka_entity({
    this.id = 0,
    required this.abyom,
    required this.nomer,
    required this.idSklad,
  });
}
