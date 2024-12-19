// ignore_for_file: use_super_parameters

import 'package:drift/drift.dart';
import 'package:systemapp/databases/todolist_database/tables/tables.dart';
import 'package:systemapp/databases/todolist_database/todolist_database.dart';

part 'account_dao.g.dart';

@DriftAccessor(tables: [AccountTable])
class AccountDao extends DatabaseAccessor<TodolistDatabase>
    with _$AccountDaoMixin {
  AccountDao(TodolistDatabase db) : super(db);

  Future<List<AccountTableData>> accounts() async {
    return await select(accountTable).get();
  }

  Future<void> add(AccountTableCompanion accountTableCompanion) async {
    await into(accountTable).insert(accountTableCompanion);
  }

  // Future<int> removeUser({required int id}) async {
  //   return (delete(accountTable)..where((tbl) => tbl.id.equals(id))).go();
  // }

  // Future<int> removeAccount({required int id}) async {
  //   return (delete(accountTable)..where((tbl) => tbl.id.equals(id))).go();
  // }
}
