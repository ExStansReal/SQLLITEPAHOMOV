class SkladEntity {
  late int id_sklad;
  final String adress;
  final int count_of_space;

  SkladEntity(
      {this.id_sklad = 0, required this.adress, required this.count_of_space});
}
