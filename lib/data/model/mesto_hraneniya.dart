import 'package:sqllitemaybe/domain/enitity/mesto_hraneniya_entity.dart';

class mesto_hreneniya extends mesto_hraneniya_entity {
  mesto_hreneniya(
      {super.id_mesto = 0,
      required super.id_yacheyka,
      required super.id_tovar,
      required super.data_hreneniya});

  Map<String, dynamic> toMap() {
    return {
      'id_yacheyka': id_yacheyka.id,
      'id_tovar': id_tovar.id_tovar,
      'data_hreneniya': data_hreneniya
    };
  }

  factory mesto_hreneniya.toFromMap(Map<String, dynamic> json) {
    return mesto_hreneniya(
        id_yacheyka: json['id_yacheyka'],
        id_tovar: json['id_tovar'],
        data_hreneniya: json['data_hreneniya']);
  }
}
