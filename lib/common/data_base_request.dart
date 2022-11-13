abstract class DataBaseRequest {
//таблицы
  static const String tableRole = 'role';

  static const String tableUsers = 'user';

  static const String tableSklad = 'sklad';

  static const String tableYacheyka = 'yacheyka';

  static const String tableType_tovar = 'type_tovar';

  static const String table_tovar = 'tovar';

  static const String table_mesto_hreneniya = 'mesto_hreneniya';

  static const String table_korzina = 'korzina';

  static const String table_zakaz = 'zakaz';

  //список таблиц
  static const List<String> tableList = [
    tableRole,
    tableUsers,
    tableSklad,
    tableYacheyka,
    table_tovar,
    table_mesto_hreneniya,
    table_korzina,
    table_zakaz
  ];
  //список для создания таблиц
  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _createTableSklad,
    _createTableType_tovar,
    _createTableYacheyka,
    _createTableMesto_hreneniya,
    _createTableKorzina,
    _createTableZakaz,
    _createTableTovar
  ];

  static String deleteTable(String table) => 'DROP TABLE $table';

  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableType_tovar =
      'CREATE TABLE "$tableType_tovar" ("id_type_tovar" INTEGER,"type_tovar" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableTovar =
      'CREATE TABLE "$table_tovar" ("id_tovar"	INTEGER,"name"	TEXT NOT NULL,"price_for_one_stuka"	INTEGER,"id_Type_tovar"	INTEGER,FOREIGN KEY("id_Type_tovar") REFERENCES "type_tovar"("id_type_tovar") ON DELETE CASCADE,PRIMARY KEY("id_type_tovar" AUTOINCREMENT) )';

  static const String _createTableSklad =
      'CREATE TABLE "$tableSklad" ("id_sklad" INTEGER,"adress" TEXT NOT NULL UNIQUE, "count_of_space" INTEGER,PRIMARY KEY("id_sklad" AUTOINCREMENT))';

  static const String _createTableUsers =
      'CREATE TABLE "$tableUsers" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT) )';

  static const String _createTableYacheyka =
      'CREATE TABLE "$tableYacheyka" ("id"	INTEGER,"abyom"	TEXT NOT NULL,"nomer"	TEXT NOT NULL,"idSklad"	INTEGER,FOREIGN KEY("idSklad") REFERENCES "sklad"("id_sklad") ON DELETE CASCADE,PRIMARY KEY("id_sklad" AUTOINCREMENT) )';

  static const String _createTableMesto_hreneniya =
      'CREATE TABLE "$table_mesto_hreneniya" INTEGER,"id_mesto" INTEGER,"id_tovar"	INTEGER, "data_hreneniya"	TEXT NOT NULL, FOREIGN KEY("id_yacheyka") REFERENCES "yacheyka"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("id_tovar") REFERENCES "tovar"("id_tovar") ON DELETE CASCADE,PRIMARY KEY("id_tovar" AUTOINCREMENT))';

  static const String _createTableKorzina =
      'CREATE TABLE "$table_korzina" INTEGER,"id_korzina" INTEGER,"id_user"	INTEGER,"id_mesto" INTEGER, "data_sozdaniy"	TEXT NOT NULL,"price" INTEGER, FOREIGN KEY("id_user") REFERENCES "user"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("id_mesto") REFERENCES "mesto_hreneniya"("id_mesto") ON DELETE CASCADE,PRIMARY KEY("id_mesto" AUTOINCREMENT))';

  static const String _createTableZakaz =
      'CREATE TABLE "$tableUsers" ("id_zakaz"	INTEGER,"id_korzina"	INTEGER,"data_otpravki"	TEXT NOT NULL,"adress" TEXT NOT NULL, "price_with_transport" INTEGER,FOREIGN KEY("id_korzina") REFERENCES "korzina"("id_korzina") ON DELETE CASCADE,PRIMARY KEY("id_korzina" AUTOINCREMENT) )';
}
