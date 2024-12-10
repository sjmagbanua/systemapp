// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_field_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextFieldInput {
  String get value => throw _privateConstructorUsedError;
  ErrorType get errorType => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get obscureText => throw _privateConstructorUsedError;

  /// Create a copy of TextFieldInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextFieldInputCopyWith<TextFieldInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldInputCopyWith<$Res> {
  factory $TextFieldInputCopyWith(
          TextFieldInput value, $Res Function(TextFieldInput) then) =
      _$TextFieldInputCopyWithImpl<$Res, TextFieldInput>;
  @useResult
  $Res call(
      {String value, ErrorType errorType, String? error, bool obscureText});
}

/// @nodoc
class _$TextFieldInputCopyWithImpl<$Res, $Val extends TextFieldInput>
    implements $TextFieldInputCopyWith<$Res> {
  _$TextFieldInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextFieldInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorType = null,
    Object? error = freezed,
    Object? obscureText = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ErrorType,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextFieldInputImplCopyWith<$Res>
    implements $TextFieldInputCopyWith<$Res> {
  factory _$$TextFieldInputImplCopyWith(_$TextFieldInputImpl value,
          $Res Function(_$TextFieldInputImpl) then) =
      __$$TextFieldInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value, ErrorType errorType, String? error, bool obscureText});
}

/// @nodoc
class __$$TextFieldInputImplCopyWithImpl<$Res>
    extends _$TextFieldInputCopyWithImpl<$Res, _$TextFieldInputImpl>
    implements _$$TextFieldInputImplCopyWith<$Res> {
  __$$TextFieldInputImplCopyWithImpl(
      _$TextFieldInputImpl _value, $Res Function(_$TextFieldInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextFieldInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorType = null,
    Object? error = freezed,
    Object? obscureText = null,
  }) {
    return _then(_$TextFieldInputImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ErrorType,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TextFieldInputImpl implements _TextFieldInput {
  const _$TextFieldInputImpl(
      {this.value = '',
      this.errorType = ErrorType.none,
      this.error = null,
      this.obscureText = true});

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final ErrorType errorType;
  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final bool obscureText;

  @override
  String toString() {
    return 'TextFieldInput(value: $value, errorType: $errorType, error: $error, obscureText: $obscureText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFieldInputImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, value, errorType, error, obscureText);

  /// Create a copy of TextFieldInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFieldInputImplCopyWith<_$TextFieldInputImpl> get copyWith =>
      __$$TextFieldInputImplCopyWithImpl<_$TextFieldInputImpl>(
          this, _$identity);
}

abstract class _TextFieldInput implements TextFieldInput {
  const factory _TextFieldInput(
      {final String value,
      final ErrorType errorType,
      final String? error,
      final bool obscureText}) = _$TextFieldInputImpl;

  @override
  String get value;
  @override
  ErrorType get errorType;
  @override
  String? get error;
  @override
  bool get obscureText;

  /// Create a copy of TextFieldInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextFieldInputImplCopyWith<_$TextFieldInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
