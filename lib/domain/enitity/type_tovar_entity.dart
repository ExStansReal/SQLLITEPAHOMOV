class type_tovar_entity {
  late int id_type_tovar;
  final String name;

  type_tovar_entity({required this.name});
}

enum type_tovar_Enum {
  Food(id: 1, name: "Еда"),
  Water(id: 2, name: 'Вода'),
  other_stuff(id: 3, name: 'Всё остальное');

  const type_tovar_Enum({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
}
