import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqliteApi
{
  Database? _db;
  final String dbName = 'Student';

  SqliteApi._privateConstructor();
  static final  SqliteApi instance = SqliteApi._privateConstructor();

  Future<Database> get db async
  {
    _db ??= await initializeDb();
    return  _db!;
  }

  initializeDb() async
  {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, dbName);
    return await openDatabase(path, version: 2, onCreate: _onCreate);
  }

  FutureOr<void> _onCreate(Database db, int version) async
  {
    await db.execute(
      '''
      create table taskType(
      typeId integer primary key autoincrement,
      typeName text
      );
      '''
    );
    await db.execute(
        '''
      create table Tasks(
      id integer primary key autoincrement,
      taskText varchar(100),
      status boolean,
      typeId integer
      );
      '''
    );
  }
}