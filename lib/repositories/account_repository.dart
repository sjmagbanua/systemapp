import 'package:drift/drift.dart';
import 'package:systemapp/databases/todolist_database/daos/daos.dart';
import 'package:systemapp/databases/todolist_database/todolist_database.dart';

class AccountRepository{
  final AccountDao _accountDao;
  const AccountRepository(
    {
      required AccountDao accountDao
    }
  ): _accountDao = accountDao
  ;


  Future<String?> accounts() async {
    var users = await _accountDao.accounts();
    if (users.isEmpty) {
      return null;
    } else {
      return users.last.email;
    }
  }


  Future<String?> add({String? email, int? userId }) async {
    var users = await _accountDao.accounts();
     if (users.isEmpty) {
      await _accountDao.add(
        AccountTableCompanion.insert(id:userId ?? 0, email: Value(email),),
      );
    } else {
      // await _accountDao.updateTable(
      //   SettingsTableCompanion(
      //     id: Value(userId ?? 0),
      //     language: Value(languageSelected ?? 'english'),
      //   ),
      // );
    }
    return null;
  }

}
