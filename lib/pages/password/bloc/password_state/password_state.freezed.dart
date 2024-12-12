// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordState {
  TextFieldInput get password => throw _privateConstructorUsedError;

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordStateCopyWith<PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordStateCopyWith<$Res> {
  factory $PasswordStateCopyWith(
          PasswordState value, $Res Function(PasswordState) then) =
      _$PasswordStateCopyWithImpl<$Res, PasswordState>;
  @useResult
  $Res call({TextFieldInput password});

  $TextFieldInputCopyWith<$Res> get password;
}

/// @nodoc
class _$PasswordStateCopyWithImpl<$Res, $Val extends PasswordState>
    implements $PasswordStateCopyWith<$Res> {
  _$PasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
    ) as $Val);
  }

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextFieldInputCopyWith<$Res> get password {
    return $TextFieldInputCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasswordStateImplCopyWith<$Res>
    implements $PasswordStateCopyWith<$Res> {
  factory _$$PasswordStateImplCopyWith(
          _$PasswordStateImpl value, $Res Function(_$PasswordStateImpl) then) =
      __$$PasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextFieldInput password});

  @override
  $TextFieldInputCopyWith<$Res> get password;
}

/// @nodoc
class __$$PasswordStateImplCopyWithImpl<$Res>
    extends _$PasswordStateCopyWithImpl<$Res, _$PasswordStateImpl>
    implements _$$PasswordStateImplCopyWith<$Res> {
  __$$PasswordStateImplCopyWithImpl(
      _$PasswordStateImpl _value, $Res Function(_$PasswordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordStateImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
    ));
  }
}

/// @nodoc

class _$PasswordStateImpl implements _PasswordState {
  const _$PasswordStateImpl(
      {this.password = const TextFieldInput(errorType: ErrorType.empty)});

  @override
  @JsonKey()
  final TextFieldInput password;

  @override
  String toString() {
    return 'PasswordState(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordStateImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordStateImplCopyWith<_$PasswordStateImpl> get copyWith =>
      __$$PasswordStateImplCopyWithImpl<_$PasswordStateImpl>(this, _$identity);
}

abstract class _PasswordState implements PasswordState {
  const factory _PasswordState({final TextFieldInput password}) =
      _$PasswordStateImpl;

  @override
  TextFieldInput get password;

  /// Create a copy of PasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordStateImplCopyWith<_$PasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
