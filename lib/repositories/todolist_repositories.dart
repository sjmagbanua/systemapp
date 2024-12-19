import 'package:drift/drift.dart';
import 'package:systemapp/databases/todolist_database/daos/daos.dart';
import 'package:systemapp/databases/todolist_database/todolist_database.dart';

class TodolistRepositories{
  final TodosDao _todolistDao;
  const TodolistRepositories(
    {
      required TodosDao todolistDao,
    }
  ):
    _todolistDao = todolistDao
  ;

    Future<String?> todos() async {
    var todos = await _todolistDao.todos();
    print(await _todolistDao.todos());
    if (todos.isEmpty) {
      return null;
    } else {
      return todos.last.todo;
    }
  }

    Future<String?> add({String? email, int? userId }) async {
    var todos = await _todolistDao.todos();
     if (todos.isEmpty) {
      await _todolistDao.add(
        TodoTableCompanion.insert(id:userId ?? 0, todo: Value(email),),
      );
    } else {
      await _todolistDao.updateTable(
        TodoTableCompanion(
          id: Value(userId ?? 0),
          todo: Value(email ?? ''
          ),
        ),
      );
    }
    return null;
  }

//   Future<String?> add({String? todo, int? id }) async {
//   var todos = await _todolistDao.todos();
//   if (todos.isEmpty) {
//     await _todolistDao.add(
//       TodoTableCompanion.insert(id: id ?? 0, todo: Value(todo)),
//     );
//   }
//   return null;
// }

}
