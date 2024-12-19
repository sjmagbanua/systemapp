// ignore_for_file: use_super_parameters

import 'package:drift/drift.dart';
import 'package:systemapp/databases/todolist_database/tables/tables.dart';
import 'package:systemapp/databases/todolist_database/todolist_database.dart';

part 'todos_dao.g.dart';


@DriftAccessor(tables: [TodoTable])
class TodosDao extends DatabaseAccessor<TodolistDatabase>
    with _$TodosDaoMixin {
  TodosDao(TodolistDatabase db) : super(db);
  
  Future<List<TodoTableData>> todos() async {
    return await select(todoTable).get();
  }

  Future<void> add(TodoTableCompanion todoTableCompanion) async {
    await into(todoTable).insert(todoTableCompanion);
  }

  
  Future<void> updateTable(
      TodoTableCompanion todoTableCompanion) async {
    await (update(todoTable)
          ..where((tbl) => tbl.id.equals(todoTableCompanion.id.value)))
        .write(todoTableCompanion);
  }

  // Future<int> removeUser({required int id}) async {
  //   return (delete(accountTable)..where((tbl) => tbl.id.equals(id))).go();
  // }

  // Future<int> removeAccount({required int id}) async {
  //   return (delete(accountTable)..where((tbl) => tbl.id.equals(id))).go();
  // }
}







