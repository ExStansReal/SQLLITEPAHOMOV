import 'package:sqllitemaybe/domain/enitity/mesto_hraneniya_entity.dart';
import 'package:sqllitemaybe/domain/enitity/tovar_entity.dart';
import 'package:sqllitemaybe/domain/enitity/user_entity.dart';
import 'package:sqllitemaybe/domain/enitity/yacheyka_entity.dart';

class korzina_entity {
  late int id_korzina;
  final UserEntity id_user;
  final mesto_hraneniya_entity id_mesto;
  final String data_sozdaniy;
  final int price;

  korzina_entity(
      {this.id_korzina = 0,
      required this.id_user,
      required this.id_mesto,
      required this.data_sozdaniy,
      required this.price});
}
