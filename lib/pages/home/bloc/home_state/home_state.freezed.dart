// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  DateTime? get selectedDay => throw _privateConstructorUsedError;
  dynamic get focusedDay => throw _privateConstructorUsedError;
  String? get accounts => throw _privateConstructorUsedError;
  TextFieldInput get email => throw _privateConstructorUsedError;
  int? get todoId => throw _privateConstructorUsedError;
  List<Todo?> get todos => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {DateTime? selectedDay,
      dynamic focusedDay,
      String? accounts,
      TextFieldInput email,
      int? todoId,
      List<Todo?> todos});

  $TextFieldInputCopyWith<$Res> get email;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
    Object? accounts = freezed,
    Object? email = null,
    Object? todoId = freezed,
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      focusedDay: freezed == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as dynamic,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      todoId: freezed == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int?,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo?>,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextFieldInputCopyWith<$Res> get email {
    return $TextFieldInputCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? selectedDay,
      dynamic focusedDay,
      String? accounts,
      TextFieldInput email,
      int? todoId,
      List<Todo?> todos});

  @override
  $TextFieldInputCopyWith<$Res> get email;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
    Object? accounts = freezed,
    Object? email = null,
    Object? todoId = freezed,
    Object? todos = null,
  }) {
    return _then(_$HomeStateImpl(
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      focusedDay: freezed == focusedDay ? _value.focusedDay! : focusedDay,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      todoId: freezed == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int?,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo?>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.selectedDay,
      this.focusedDay = DateTime,
      this.accounts,
      this.email = const TextFieldInput(errorType: ErrorType.empty),
      this.todoId,
      final List<Todo?> todos = const []})
      : _todos = todos;

  @override
  final DateTime? selectedDay;
  @override
  @JsonKey()
  final dynamic focusedDay;
  @override
  final String? accounts;
  @override
  @JsonKey()
  final TextFieldInput email;
  @override
  final int? todoId;
  final List<Todo?> _todos;
  @override
  @JsonKey()
  List<Todo?> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'HomeState(selectedDay: $selectedDay, focusedDay: $focusedDay, accounts: $accounts, email: $email, todoId: $todoId, todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay) &&
            (identical(other.accounts, accounts) ||
                other.accounts == accounts) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedDay,
      const DeepCollectionEquality().hash(focusedDay),
      accounts,
      email,
      todoId,
      const DeepCollectionEquality().hash(_todos));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final DateTime? selectedDay,
      final dynamic focusedDay,
      final String? accounts,
      final TextFieldInput email,
      final int? todoId,
      final List<Todo?> todos}) = _$HomeStateImpl;

  @override
  DateTime? get selectedDay;
  @override
  dynamic get focusedDay;
  @override
  String? get accounts;
  @override
  TextFieldInput get email;
  @override
  int? get todoId;
  @override
  List<Todo?> get todos;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
