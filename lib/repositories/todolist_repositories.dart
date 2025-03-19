import 'package:drift/drift.dart';
import 'package:systemapp/databases/todolist_database/daos/daos.dart';
import 'package:systemapp/databases/todolist_database/todolist_database.dart';
import 'package:systemapp/models/todo/todo.dart';

class TodolistRepositories{
  final TaskDao _taskDao;
  const TodolistRepositories(
    {
      required TaskDao taskDao,
    }
  ):
    _taskDao = taskDao
  ;

    Future<List<Todo>?> todos() async {
      var todos = await _taskDao.todos();
      print('list : $todos' );
      for(var todo in todos){
        print(todo);
        print(todo.id);
      }
      if (todos.isEmpty) {
        return null;
      } else {
        // Return a list of emails from the todos list
        // return todos.map((e) => e.email ?? '').toList();
        return todos.map((task) => Todo(id: task.id, email: task.email)).toList();
      }
    }


  Future<String?> add({String? email, int? userId }) async {
      await _taskDao.add(
        TaskTableCompanion.insert( email: Value(email),),
      );
      return null;
  }

  Future<int?> updateTask({String? task, int? id}) async{
      await _taskDao.updateTask(
        TaskTableCompanion(
          id: Value(id ?? 0),
          email: task != null && task.isNotEmpty ? Value(task) : const Value.absent(),
        )
      );
      print('repo $task');
      return null;
  }

  Future<int?> delete({int? id}) async{
    await _taskDao.removeTodo(id: id ?? 0);
    return null;
  }

}
