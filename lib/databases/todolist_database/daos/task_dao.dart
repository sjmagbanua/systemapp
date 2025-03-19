// ignore_for_file: use_super_parameters

import 'package:drift/drift.dart';
import 'package:systemapp/databases/todolist_database/tables/tables.dart';
import 'package:systemapp/databases/todolist_database/todolist_database.dart';

part 'task_dao.g.dart';

@DriftAccessor(tables: [TaskTable])
class TaskDao extends DatabaseAccessor<TodolistDatabase>
    with _$TaskDaoMixin {
  TaskDao(TodolistDatabase db) : super(db);

  Future<List<TaskTableData>> todos() async {
    return await select(taskTable).get();
  }

  Future<void> add(TaskTableCompanion taskTableCompanion) async {
    await into(taskTable).insert(taskTableCompanion);
  }

  Future<int> updateTask(TaskTableCompanion taskTableCompanion) async {
    return await (update(taskTable)
            ..where((tbl) => tbl.id.equals(taskTableCompanion.id.value)))
          .write(taskTableCompanion);
  }

  Future<int> removeTodo({required int id}) async {
    return (delete(taskTable)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Future<int> removeAccount({required int id}) async {
  //   return (delete(accountTable)..where((tbl) => tbl.id.equals(id))).go();
  // }
}
