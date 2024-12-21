// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
// part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    int? id,
    String? email,
  }) = _Todo;

  // factory Todo.fromJson(Map<String, dynamic> json) =>
  //     _$$_TodoFromJson(json);
}
