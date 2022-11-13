import 'dart:io';

import 'package:sqflite/sqflite.dart';

import 'package:path_provider/path_provider.dart' as path_provider;

import 'package:path/path.dart';
import 'package:sqllitemaybe/common/data_base_request.dart';
import 'package:sqllitemaybe/data/model/role.dart';
import 'package:sqllitemaybe/data/model/user.dart';
import 'package:sqllitemaybe/domain/enitity/role_entity.dart';
import 'package:sqllitemaybe/domain/enitity/type_tovar_entity.dart';

class DataBaseHelper {
  static final DataBaseHelper instance = DataBaseHelper._instance();

  DataBaseHelper._instance();

  //версия
  final int _version = 1;
  //путь
  late final String _pathDB;
  //путь к БД
  late final Directory _appDocumentDirectory;
  //БД
  late final Database database;
  init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    _pathDB = join(
        _appDocumentDirectory.path, 'test.db'); //выборка пути и названия БД

    //провекра ОС
    if (Platform.isWindows || Platform.isMacOS || Platform.isMacOS) {
    } else {
      //инициализация для мобилок
      database = await openDatabase(_pathDB,
          version: _version,
          onCreate: (db, version) => onCreateTable(
                db,
              ),
          onUpgrade: ((db, oldVersion, newVersion) => onUpdateTable(db)));
    }
  }

  Future<void> onCreateTable(Database db) async {
    for (var elemnt in DataBaseRequest.tableCreateList) {
      await db.execute(elemnt);
    }
  }

  Future<void> onDropDataBase() async {
    database.close();
    deleteDatabase(_pathDB);
  }

  Future<void> onUpdateTable(Database db) async {
    var tables = await db.rawQuery(
        'SELECT name FROM sqlite_master'); //sqlite_master хранитв все название таблиц

    for (var table in DataBaseRequest.tableList.reversed) {
      if (tables.where((element) => element['name'] == table).isNotEmpty) {
        await db.execute(DataBaseRequest.deleteTable(table));
      }
    }

    await onCreateTable(db);
  }

  Future<void> onInitTable(Database db) async {
    try {
      for (var element in RoleEnum.values) {
        db.insert(DataBaseRequest.tableRole, Role(name: element.name).toMap());
      }
      for (var element in type_tovar_Enum.values) {
        db.insert(
            DataBaseRequest.tableType_tovar, Role(name: element.name).toMap());
      }
    } on DatabaseException catch (error) {}
  }
}
