import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'daos/daos.dart';
import 'tables/tables.dart';

part 'todolist_database.g.dart';

@DriftDatabase(
  tables: [
    AccountTable, TaskTable
    // Ensure this is properly defined in tables.dart
  ],
  daos: [
    AccountDao, TaskDao
    // Ensure this DAO is properly implemented
  ],
)
class TodolistDatabase extends _$TodolistDatabase {
  final String databaseName;

  TodolistDatabase(this.databaseName)
      : super(_openConnectionSavedDB(databaseName));

  @override
  int get schemaVersion => 12; // Increment when schema changes

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll(); // Creates all defined tables
        },
        onUpgrade: (m, from, to) async {
          // Handle migration logic for existing users
          if (from < 10) {
            await m.createTable(taskTable); // Example for creating a new table
          }
        },
      );
}

LazyDatabase _openConnectionSavedDB(String databaseName) {
  return LazyDatabase(
    () async {
      // Retrieve application documents directory
      final dbFolder = await getApplicationDocumentsDirectory();
      // Define database file path
      final file = File(p.join(dbFolder.path, databaseName));
      // Initialize Drift database with logs enabled
      return NativeDatabase.createInBackground(file, logStatements: true);
    },
  );
}
