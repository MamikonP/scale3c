// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        firebaseSignInWithEmail,
    required TResult Function(String email, String password)
        firebaseSignUpWithEmail,
    required TResult Function() firebaseFacebookSignIn,
    required TResult Function() linkedinSignIn,
    required TResult Function() firebaseSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? firebaseSignInWithEmail,
    TResult? Function(String email, String password)? firebaseSignUpWithEmail,
    TResult? Function()? firebaseFacebookSignIn,
    TResult? Function()? linkedinSignIn,
    TResult? Function()? firebaseSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? firebaseSignInWithEmail,
    TResult Function(String email, String password)? firebaseSignUpWithEmail,
    TResult Function()? firebaseFacebookSignIn,
    TResult Function()? linkedinSignIn,
    TResult Function()? firebaseSignOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FirebaseSignInWithEmail value)
        firebaseSignInWithEmail,
    required TResult Function(FirebaseSignUpWithEmail value)
        firebaseSignUpWithEmail,
    required TResult Function(FirebaseFacebookSignIn value)
        firebaseFacebookSignIn,
    required TResult Function(LinkedinSignIn value) linkedinSignIn,
    required TResult Function(FirebaseSignOut value) firebaseSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult? Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult? Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult? Function(LinkedinSignIn value)? linkedinSignIn,
    TResult? Function(FirebaseSignOut value)? firebaseSignOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult Function(LinkedinSignIn value)? linkedinSignIn,
    TResult Function(FirebaseSignOut value)? firebaseSignOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        firebaseSignInWithEmail,
    required TResult Function(String email, String password)
        firebaseSignUpWithEmail,
    required TResult Function() firebaseFacebookSignIn,
    required TResult Function() linkedinSignIn,
    required TResult Function() firebaseSignOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? firebaseSignInWithEmail,
    TResult? Function(String email, String password)? firebaseSignUpWithEmail,
    TResult? Function()? firebaseFacebookSignIn,
    TResult? Function()? linkedinSignIn,
    TResult? Function()? firebaseSignOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? firebaseSignInWithEmail,
    TResult Function(String email, String password)? firebaseSignUpWithEmail,
    TResult Function()? firebaseFacebookSignIn,
    TResult Function()? linkedinSignIn,
    TResult Function()? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FirebaseSignInWithEmail value)
        firebaseSignInWithEmail,
    required TResult Function(FirebaseSignUpWithEmail value)
        firebaseSignUpWithEmail,
    required TResult Function(FirebaseFacebookSignIn value)
        firebaseFacebookSignIn,
    required TResult Function(LinkedinSignIn value) linkedinSignIn,
    required TResult Function(FirebaseSignOut value) firebaseSignOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult? Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult? Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult? Function(LinkedinSignIn value)? linkedinSignIn,
    TResult? Function(FirebaseSignOut value)? firebaseSignOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult Function(LinkedinSignIn value)? linkedinSignIn,
    TResult Function(FirebaseSignOut value)? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements AuthEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$_FirebaseSignInWithEmailCopyWith<$Res> {
  factory _$$_FirebaseSignInWithEmailCopyWith(_$_FirebaseSignInWithEmail value,
          $Res Function(_$_FirebaseSignInWithEmail) then) =
      __$$_FirebaseSignInWithEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_FirebaseSignInWithEmailCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_FirebaseSignInWithEmail>
    implements _$$_FirebaseSignInWithEmailCopyWith<$Res> {
  __$$_FirebaseSignInWithEmailCopyWithImpl(_$_FirebaseSignInWithEmail _value,
      $Res Function(_$_FirebaseSignInWithEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_FirebaseSignInWithEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirebaseSignInWithEmail implements FirebaseSignInWithEmail {
  const _$_FirebaseSignInWithEmail(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.firebaseSignInWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseSignInWithEmail &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseSignInWithEmailCopyWith<_$_FirebaseSignInWithEmail>
      get copyWith =>
          __$$_FirebaseSignInWithEmailCopyWithImpl<_$_FirebaseSignInWithEmail>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        firebaseSignInWithEmail,
    required TResult Function(String email, String password)
        firebaseSignUpWithEmail,
    required TResult Function() firebaseFacebookSignIn,
    required TResult Function() linkedinSignIn,
    required TResult Function() firebaseSignOut,
  }) {
    return firebaseSignInWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? firebaseSignInWithEmail,
    TResult? Function(String email, String password)? firebaseSignUpWithEmail,
    TResult? Function()? firebaseFacebookSignIn,
    TResult? Function()? linkedinSignIn,
    TResult? Function()? firebaseSignOut,
  }) {
    return firebaseSignInWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? firebaseSignInWithEmail,
    TResult Function(String email, String password)? firebaseSignUpWithEmail,
    TResult Function()? firebaseFacebookSignIn,
    TResult Function()? linkedinSignIn,
    TResult Function()? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (firebaseSignInWithEmail != null) {
      return firebaseSignInWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FirebaseSignInWithEmail value)
        firebaseSignInWithEmail,
    required TResult Function(FirebaseSignUpWithEmail value)
        firebaseSignUpWithEmail,
    required TResult Function(FirebaseFacebookSignIn value)
        firebaseFacebookSignIn,
    required TResult Function(LinkedinSignIn value) linkedinSignIn,
    required TResult Function(FirebaseSignOut value) firebaseSignOut,
  }) {
    return firebaseSignInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult? Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult? Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult? Function(LinkedinSignIn value)? linkedinSignIn,
    TResult? Function(FirebaseSignOut value)? firebaseSignOut,
  }) {
    return firebaseSignInWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult Function(LinkedinSignIn value)? linkedinSignIn,
    TResult Function(FirebaseSignOut value)? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (firebaseSignInWithEmail != null) {
      return firebaseSignInWithEmail(this);
    }
    return orElse();
  }
}

abstract class FirebaseSignInWithEmail implements AuthEvent {
  const factory FirebaseSignInWithEmail(
      final String email, final String password) = _$_FirebaseSignInWithEmail;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_FirebaseSignInWithEmailCopyWith<_$_FirebaseSignInWithEmail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FirebaseSignUpWithEmailCopyWith<$Res> {
  factory _$$_FirebaseSignUpWithEmailCopyWith(_$_FirebaseSignUpWithEmail value,
          $Res Function(_$_FirebaseSignUpWithEmail) then) =
      __$$_FirebaseSignUpWithEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_FirebaseSignUpWithEmailCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_FirebaseSignUpWithEmail>
    implements _$$_FirebaseSignUpWithEmailCopyWith<$Res> {
  __$$_FirebaseSignUpWithEmailCopyWithImpl(_$_FirebaseSignUpWithEmail _value,
      $Res Function(_$_FirebaseSignUpWithEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_FirebaseSignUpWithEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirebaseSignUpWithEmail implements FirebaseSignUpWithEmail {
  const _$_FirebaseSignUpWithEmail(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.firebaseSignUpWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseSignUpWithEmail &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseSignUpWithEmailCopyWith<_$_FirebaseSignUpWithEmail>
      get copyWith =>
          __$$_FirebaseSignUpWithEmailCopyWithImpl<_$_FirebaseSignUpWithEmail>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        firebaseSignInWithEmail,
    required TResult Function(String email, String password)
        firebaseSignUpWithEmail,
    required TResult Function() firebaseFacebookSignIn,
    required TResult Function() linkedinSignIn,
    required TResult Function() firebaseSignOut,
  }) {
    return firebaseSignUpWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? firebaseSignInWithEmail,
    TResult? Function(String email, String password)? firebaseSignUpWithEmail,
    TResult? Function()? firebaseFacebookSignIn,
    TResult? Function()? linkedinSignIn,
    TResult? Function()? firebaseSignOut,
  }) {
    return firebaseSignUpWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? firebaseSignInWithEmail,
    TResult Function(String email, String password)? firebaseSignUpWithEmail,
    TResult Function()? firebaseFacebookSignIn,
    TResult Function()? linkedinSignIn,
    TResult Function()? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (firebaseSignUpWithEmail != null) {
      return firebaseSignUpWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FirebaseSignInWithEmail value)
        firebaseSignInWithEmail,
    required TResult Function(FirebaseSignUpWithEmail value)
        firebaseSignUpWithEmail,
    required TResult Function(FirebaseFacebookSignIn value)
        firebaseFacebookSignIn,
    required TResult Function(LinkedinSignIn value) linkedinSignIn,
    required TResult Function(FirebaseSignOut value) firebaseSignOut,
  }) {
    return firebaseSignUpWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult? Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult? Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult? Function(LinkedinSignIn value)? linkedinSignIn,
    TResult? Function(FirebaseSignOut value)? firebaseSignOut,
  }) {
    return firebaseSignUpWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult Function(LinkedinSignIn value)? linkedinSignIn,
    TResult Function(FirebaseSignOut value)? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (firebaseSignUpWithEmail != null) {
      return firebaseSignUpWithEmail(this);
    }
    return orElse();
  }
}

abstract class FirebaseSignUpWithEmail implements AuthEvent {
  const factory FirebaseSignUpWithEmail(
      final String email, final String password) = _$_FirebaseSignUpWithEmail;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_FirebaseSignUpWithEmailCopyWith<_$_FirebaseSignUpWithEmail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FirebaseFacebookSignInCopyWith<$Res> {
  factory _$$_FirebaseFacebookSignInCopyWith(_$_FirebaseFacebookSignIn value,
          $Res Function(_$_FirebaseFacebookSignIn) then) =
      __$$_FirebaseFacebookSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FirebaseFacebookSignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_FirebaseFacebookSignIn>
    implements _$$_FirebaseFacebookSignInCopyWith<$Res> {
  __$$_FirebaseFacebookSignInCopyWithImpl(_$_FirebaseFacebookSignIn _value,
      $Res Function(_$_FirebaseFacebookSignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FirebaseFacebookSignIn implements FirebaseFacebookSignIn {
  const _$_FirebaseFacebookSignIn();

  @override
  String toString() {
    return 'AuthEvent.firebaseFacebookSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseFacebookSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        firebaseSignInWithEmail,
    required TResult Function(String email, String password)
        firebaseSignUpWithEmail,
    required TResult Function() firebaseFacebookSignIn,
    required TResult Function() linkedinSignIn,
    required TResult Function() firebaseSignOut,
  }) {
    return firebaseFacebookSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? firebaseSignInWithEmail,
    TResult? Function(String email, String password)? firebaseSignUpWithEmail,
    TResult? Function()? firebaseFacebookSignIn,
    TResult? Function()? linkedinSignIn,
    TResult? Function()? firebaseSignOut,
  }) {
    return firebaseFacebookSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? firebaseSignInWithEmail,
    TResult Function(String email, String password)? firebaseSignUpWithEmail,
    TResult Function()? firebaseFacebookSignIn,
    TResult Function()? linkedinSignIn,
    TResult Function()? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (firebaseFacebookSignIn != null) {
      return firebaseFacebookSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FirebaseSignInWithEmail value)
        firebaseSignInWithEmail,
    required TResult Function(FirebaseSignUpWithEmail value)
        firebaseSignUpWithEmail,
    required TResult Function(FirebaseFacebookSignIn value)
        firebaseFacebookSignIn,
    required TResult Function(LinkedinSignIn value) linkedinSignIn,
    required TResult Function(FirebaseSignOut value) firebaseSignOut,
  }) {
    return firebaseFacebookSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult? Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult? Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult? Function(LinkedinSignIn value)? linkedinSignIn,
    TResult? Function(FirebaseSignOut value)? firebaseSignOut,
  }) {
    return firebaseFacebookSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult Function(LinkedinSignIn value)? linkedinSignIn,
    TResult Function(FirebaseSignOut value)? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (firebaseFacebookSignIn != null) {
      return firebaseFacebookSignIn(this);
    }
    return orElse();
  }
}

abstract class FirebaseFacebookSignIn implements AuthEvent {
  const factory FirebaseFacebookSignIn() = _$_FirebaseFacebookSignIn;
}

/// @nodoc
abstract class _$$_LinkedinSignInCopyWith<$Res> {
  factory _$$_LinkedinSignInCopyWith(
          _$_LinkedinSignIn value, $Res Function(_$_LinkedinSignIn) then) =
      __$$_LinkedinSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LinkedinSignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LinkedinSignIn>
    implements _$$_LinkedinSignInCopyWith<$Res> {
  __$$_LinkedinSignInCopyWithImpl(
      _$_LinkedinSignIn _value, $Res Function(_$_LinkedinSignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LinkedinSignIn implements LinkedinSignIn {
  const _$_LinkedinSignIn();

  @override
  String toString() {
    return 'AuthEvent.linkedinSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LinkedinSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        firebaseSignInWithEmail,
    required TResult Function(String email, String password)
        firebaseSignUpWithEmail,
    required TResult Function() firebaseFacebookSignIn,
    required TResult Function() linkedinSignIn,
    required TResult Function() firebaseSignOut,
  }) {
    return linkedinSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? firebaseSignInWithEmail,
    TResult? Function(String email, String password)? firebaseSignUpWithEmail,
    TResult? Function()? firebaseFacebookSignIn,
    TResult? Function()? linkedinSignIn,
    TResult? Function()? firebaseSignOut,
  }) {
    return linkedinSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? firebaseSignInWithEmail,
    TResult Function(String email, String password)? firebaseSignUpWithEmail,
    TResult Function()? firebaseFacebookSignIn,
    TResult Function()? linkedinSignIn,
    TResult Function()? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (linkedinSignIn != null) {
      return linkedinSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FirebaseSignInWithEmail value)
        firebaseSignInWithEmail,
    required TResult Function(FirebaseSignUpWithEmail value)
        firebaseSignUpWithEmail,
    required TResult Function(FirebaseFacebookSignIn value)
        firebaseFacebookSignIn,
    required TResult Function(LinkedinSignIn value) linkedinSignIn,
    required TResult Function(FirebaseSignOut value) firebaseSignOut,
  }) {
    return linkedinSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult? Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult? Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult? Function(LinkedinSignIn value)? linkedinSignIn,
    TResult? Function(FirebaseSignOut value)? firebaseSignOut,
  }) {
    return linkedinSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult Function(LinkedinSignIn value)? linkedinSignIn,
    TResult Function(FirebaseSignOut value)? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (linkedinSignIn != null) {
      return linkedinSignIn(this);
    }
    return orElse();
  }
}

abstract class LinkedinSignIn implements AuthEvent {
  const factory LinkedinSignIn() = _$_LinkedinSignIn;
}

/// @nodoc
abstract class _$$_FirebaseSignOutCopyWith<$Res> {
  factory _$$_FirebaseSignOutCopyWith(
          _$_FirebaseSignOut value, $Res Function(_$_FirebaseSignOut) then) =
      __$$_FirebaseSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FirebaseSignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_FirebaseSignOut>
    implements _$$_FirebaseSignOutCopyWith<$Res> {
  __$$_FirebaseSignOutCopyWithImpl(
      _$_FirebaseSignOut _value, $Res Function(_$_FirebaseSignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FirebaseSignOut implements FirebaseSignOut {
  const _$_FirebaseSignOut();

  @override
  String toString() {
    return 'AuthEvent.firebaseSignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FirebaseSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        firebaseSignInWithEmail,
    required TResult Function(String email, String password)
        firebaseSignUpWithEmail,
    required TResult Function() firebaseFacebookSignIn,
    required TResult Function() linkedinSignIn,
    required TResult Function() firebaseSignOut,
  }) {
    return firebaseSignOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? firebaseSignInWithEmail,
    TResult? Function(String email, String password)? firebaseSignUpWithEmail,
    TResult? Function()? firebaseFacebookSignIn,
    TResult? Function()? linkedinSignIn,
    TResult? Function()? firebaseSignOut,
  }) {
    return firebaseSignOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? firebaseSignInWithEmail,
    TResult Function(String email, String password)? firebaseSignUpWithEmail,
    TResult Function()? firebaseFacebookSignIn,
    TResult Function()? linkedinSignIn,
    TResult Function()? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (firebaseSignOut != null) {
      return firebaseSignOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(FirebaseSignInWithEmail value)
        firebaseSignInWithEmail,
    required TResult Function(FirebaseSignUpWithEmail value)
        firebaseSignUpWithEmail,
    required TResult Function(FirebaseFacebookSignIn value)
        firebaseFacebookSignIn,
    required TResult Function(LinkedinSignIn value) linkedinSignIn,
    required TResult Function(FirebaseSignOut value) firebaseSignOut,
  }) {
    return firebaseSignOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult? Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult? Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult? Function(LinkedinSignIn value)? linkedinSignIn,
    TResult? Function(FirebaseSignOut value)? firebaseSignOut,
  }) {
    return firebaseSignOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(FirebaseSignInWithEmail value)? firebaseSignInWithEmail,
    TResult Function(FirebaseSignUpWithEmail value)? firebaseSignUpWithEmail,
    TResult Function(FirebaseFacebookSignIn value)? firebaseFacebookSignIn,
    TResult Function(LinkedinSignIn value)? linkedinSignIn,
    TResult Function(FirebaseSignOut value)? firebaseSignOut,
    required TResult orElse(),
  }) {
    if (firebaseSignOut != null) {
      return firebaseSignOut(this);
    }
    return orElse();
  }
}

abstract class FirebaseSignOut implements AuthEvent {
  const factory FirebaseSignOut() = _$_FirebaseSignOut;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedIn,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedIn,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedIn,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedIn,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedIn,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedIn,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SignedInCopyWith<$Res> {
  factory _$$_SignedInCopyWith(
          _$_SignedIn value, $Res Function(_$_SignedIn) then) =
      __$$_SignedInCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_SignedInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SignedIn>
    implements _$$_SignedInCopyWith<$Res> {
  __$$_SignedInCopyWithImpl(
      _$_SignedIn _value, $Res Function(_$_SignedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_SignedIn(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_SignedIn implements _SignedIn {
  const _$_SignedIn(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.signedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedIn &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignedInCopyWith<_$_SignedIn> get copyWith =>
      __$$_SignedInCopyWithImpl<_$_SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedIn,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return signedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedIn,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return signedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedIn,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class _SignedIn implements AuthState {
  const factory _SignedIn(final User user) = _$_SignedIn;

  User get user;
  @JsonKey(ignore: true)
  _$$_SignedInCopyWith<_$_SignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedIn,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedIn,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedIn,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedIn,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedIn,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedIn,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) signedIn,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? signedIn,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? signedIn,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
