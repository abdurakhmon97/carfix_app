// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthEvent {
  String get phone;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      _$AuthEventCopyWithImpl<AuthEvent>(this as AuthEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEvent &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @override
  String toString() {
    return 'AuthEvent(phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) _then) =
      _$AuthEventCopyWithImpl;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._self, this._then);

  final AuthEvent _self;
  final $Res Function(AuthEvent) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_self.copyWith(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Register implements AuthEvent {
  const _Register({required this.phone});

  @override
  final String phone;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterCopyWith<_Register> get copyWith =>
      __$RegisterCopyWithImpl<_Register>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Register &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @override
  String toString() {
    return 'AuthEvent.register(phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$RegisterCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) _then) =
      __$RegisterCopyWithImpl;
  @override
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$RegisterCopyWithImpl<$Res> implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(this._self, this._then);

  final _Register _self;
  final $Res Function(_Register) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
  }) {
    return _then(_Register(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AuthState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState()';
  }
}

/// @nodoc
class $AuthStateCopyWith<$Res> {
  $AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}

/// @nodoc

class Initial implements AuthState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.initial()';
  }
}

/// @nodoc

class Loading implements AuthState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.loading()';
  }
}

/// @nodoc

class Error implements AuthState {
  const Error(this.error);

  final ErrorEntity error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) =
      _$ErrorCopyWithImpl;
  @useResult
  $Res call({ErrorEntity error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(Error(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity,
    ));
  }
}

/// @nodoc

class RegisterSuccess implements AuthState {
  const RegisterSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.registerSuccess()';
  }
}

// dart format on
