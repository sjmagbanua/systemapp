// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskState {
  TextFieldInput get taskUpdate => throw _privateConstructorUsedError;
  String get task => throw _privateConstructorUsedError;
  List<Todo?> get todos => throw _privateConstructorUsedError;
  int get todoId => throw _privateConstructorUsedError;
  String? get newTask => throw _privateConstructorUsedError;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {TextFieldInput taskUpdate,
      String task,
      List<Todo?> todos,
      int todoId,
      String? newTask});

  $TextFieldInputCopyWith<$Res> get taskUpdate;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskUpdate = null,
    Object? task = null,
    Object? todos = null,
    Object? todoId = null,
    Object? newTask = freezed,
  }) {
    return _then(_value.copyWith(
      taskUpdate: null == taskUpdate
          ? _value.taskUpdate
          : taskUpdate // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo?>,
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
      newTask: freezed == newTask
          ? _value.newTask
          : newTask // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextFieldInputCopyWith<$Res> get taskUpdate {
    return $TextFieldInputCopyWith<$Res>(_value.taskUpdate, (value) {
      return _then(_value.copyWith(taskUpdate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateImplCopyWith(
          _$TaskStateImpl value, $Res Function(_$TaskStateImpl) then) =
      __$$TaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextFieldInput taskUpdate,
      String task,
      List<Todo?> todos,
      int todoId,
      String? newTask});

  @override
  $TextFieldInputCopyWith<$Res> get taskUpdate;
}

/// @nodoc
class __$$TaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateImpl>
    implements _$$TaskStateImplCopyWith<$Res> {
  __$$TaskStateImplCopyWithImpl(
      _$TaskStateImpl _value, $Res Function(_$TaskStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskUpdate = null,
    Object? task = null,
    Object? todos = null,
    Object? todoId = null,
    Object? newTask = freezed,
  }) {
    return _then(_$TaskStateImpl(
      taskUpdate: null == taskUpdate
          ? _value.taskUpdate
          : taskUpdate // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo?>,
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
      newTask: freezed == newTask
          ? _value.newTask
          : newTask // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TaskStateImpl implements _TaskState {
  const _$TaskStateImpl(
      {this.taskUpdate = const TextFieldInput(errorType: ErrorType.empty),
      required this.task,
      required final List<Todo?> todos,
      required this.todoId,
      this.newTask})
      : _todos = todos;

  @override
  @JsonKey()
  final TextFieldInput taskUpdate;
  @override
  final String task;
  final List<Todo?> _todos;
  @override
  List<Todo?> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final int todoId;
  @override
  final String? newTask;

  @override
  String toString() {
    return 'TaskState(taskUpdate: $taskUpdate, task: $task, todos: $todos, todoId: $todoId, newTask: $newTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStateImpl &&
            (identical(other.taskUpdate, taskUpdate) ||
                other.taskUpdate == taskUpdate) &&
            (identical(other.task, task) || other.task == task) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.newTask, newTask) || other.newTask == newTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskUpdate, task,
      const DeepCollectionEquality().hash(_todos), todoId, newTask);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      __$$TaskStateImplCopyWithImpl<_$TaskStateImpl>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  const factory _TaskState(
      {final TextFieldInput taskUpdate,
      required final String task,
      required final List<Todo?> todos,
      required final int todoId,
      final String? newTask}) = _$TaskStateImpl;

  @override
  TextFieldInput get taskUpdate;
  @override
  String get task;
  @override
  List<Todo?> get todos;
  @override
  int get todoId;
  @override
  String? get newTask;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
