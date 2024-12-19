import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'daos/daos.dart';
import 'tables/tables.dart';

part 'todolist_database.g.dart';

@DriftDatabase(
  tables: [AccountTable, TodoTable],
  daos: [AccountDao, TodosDao]
)
class TodolistDatabase extends _$TodolistDatabase {
  final String databaseName;

  TodolistDatabase(this.databaseName)
      : super(_openConnectionSavedDB(databaseName));

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (m, from, to) async {
          if (from == 1) {
            await m.createTable(todoTable);
          }
        },
      );
}

LazyDatabase _openConnectionSavedDB(String databaseName) {
  return LazyDatabase(
    () async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, databaseName));
      return NativeDatabase.createInBackground(file, logStatements: true);
    },
  );
}
