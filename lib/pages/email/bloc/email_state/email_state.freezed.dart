// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailState {
  TextFieldInput get email => throw _privateConstructorUsedError;

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmailStateCopyWith<EmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailStateCopyWith<$Res> {
  factory $EmailStateCopyWith(
          EmailState value, $Res Function(EmailState) then) =
      _$EmailStateCopyWithImpl<$Res, EmailState>;
  @useResult
  $Res call({TextFieldInput email});

  $TextFieldInputCopyWith<$Res> get email;
}

/// @nodoc
class _$EmailStateCopyWithImpl<$Res, $Val extends EmailState>
    implements $EmailStateCopyWith<$Res> {
  _$EmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
    ) as $Val);
  }

  /// Create a copy of EmailState
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
abstract class _$$EmailStateImplCopyWith<$Res>
    implements $EmailStateCopyWith<$Res> {
  factory _$$EmailStateImplCopyWith(
          _$EmailStateImpl value, $Res Function(_$EmailStateImpl) then) =
      __$$EmailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextFieldInput email});

  @override
  $TextFieldInputCopyWith<$Res> get email;
}

/// @nodoc
class __$$EmailStateImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$EmailStateImpl>
    implements _$$EmailStateImplCopyWith<$Res> {
  __$$EmailStateImplCopyWithImpl(
      _$EmailStateImpl _value, $Res Function(_$EmailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
    ));
  }
}

/// @nodoc

class _$EmailStateImpl implements _EmailState {
  const _$EmailStateImpl(
      {this.email = const TextFieldInput(errorType: ErrorType.empty)});

  @override
  @JsonKey()
  final TextFieldInput email;

  @override
  String toString() {
    return 'EmailState(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailStateImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailStateImplCopyWith<_$EmailStateImpl> get copyWith =>
      __$$EmailStateImplCopyWithImpl<_$EmailStateImpl>(this, _$identity);
}

abstract class _EmailState implements EmailState {
  const factory _EmailState({final TextFieldInput email}) = _$EmailStateImpl;

  @override
  TextFieldInput get email;

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailStateImplCopyWith<_$EmailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
