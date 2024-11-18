// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WelcomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPermissions value) getPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPermissions value)? getPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPermissions value)? getPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeEventCopyWith<$Res> {
  factory $WelcomeEventCopyWith(
          WelcomeEvent value, $Res Function(WelcomeEvent) then) =
      _$WelcomeEventCopyWithImpl<$Res, WelcomeEvent>;
}

/// @nodoc
class _$WelcomeEventCopyWithImpl<$Res, $Val extends WelcomeEvent>
    implements $WelcomeEventCopyWith<$Res> {
  _$WelcomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$WelcomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WelcomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPermissions,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPermissions,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPermissions,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetPermissions value) getPermissions,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPermissions value)? getPermissions,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPermissions value)? getPermissions,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WelcomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetPermissionsImplCopyWith<$Res> {
  factory _$$GetPermissionsImplCopyWith(_$GetPermissionsImpl value,
          $Res Function(_$GetPermissionsImpl) then) =
      __$$GetPermissionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPermissionsImplCopyWithImpl<$Res>
    extends _$WelcomeEventCopyWithImpl<$Res, _$GetPermissionsImpl>
    implements _$$GetPermissionsImplCopyWith<$Res> {
  __$$GetPermissionsImplCopyWithImpl(
      _$GetPermissionsImpl _value, $Res Function(_$GetPermissionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPermissionsImpl implements _GetPermissions {
  const _$GetPermissionsImpl();

  @override
  String toString() {
    return 'WelcomeEvent.getPermissions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPermissionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getPermissions,
  }) {
    return getPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getPermissions,
  }) {
    return getPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getPermissions,
    required TResult orElse(),
  }) {
    if (getPermissions != null) {
      return getPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPermissions value) getPermissions,
  }) {
    return getPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPermissions value)? getPermissions,
  }) {
    return getPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPermissions value)? getPermissions,
    required TResult orElse(),
  }) {
    if (getPermissions != null) {
      return getPermissions(this);
    }
    return orElse();
  }
}

abstract class _GetPermissions implements WelcomeEvent {
  const factory _GetPermissions() = _$GetPermissionsImpl;
}

/// @nodoc
mixin _$WelcomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isPermissionGranted => throw _privateConstructorUsedError;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WelcomeStateCopyWith<WelcomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeStateCopyWith<$Res> {
  factory $WelcomeStateCopyWith(
          WelcomeState value, $Res Function(WelcomeState) then) =
      _$WelcomeStateCopyWithImpl<$Res, WelcomeState>;
  @useResult
  $Res call({bool isLoading, bool? isPermissionGranted});
}

/// @nodoc
class _$WelcomeStateCopyWithImpl<$Res, $Val extends WelcomeState>
    implements $WelcomeStateCopyWith<$Res> {
  _$WelcomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isPermissionGranted = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionGranted: freezed == isPermissionGranted
          ? _value.isPermissionGranted
          : isPermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WelcomeStateImplCopyWith<$Res>
    implements $WelcomeStateCopyWith<$Res> {
  factory _$$WelcomeStateImplCopyWith(
          _$WelcomeStateImpl value, $Res Function(_$WelcomeStateImpl) then) =
      __$$WelcomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool? isPermissionGranted});
}

/// @nodoc
class __$$WelcomeStateImplCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$WelcomeStateImpl>
    implements _$$WelcomeStateImplCopyWith<$Res> {
  __$$WelcomeStateImplCopyWithImpl(
      _$WelcomeStateImpl _value, $Res Function(_$WelcomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isPermissionGranted = freezed,
  }) {
    return _then(_$WelcomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionGranted: freezed == isPermissionGranted
          ? _value.isPermissionGranted
          : isPermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$WelcomeStateImpl extends _WelcomeState {
  _$WelcomeStateImpl({required this.isLoading, this.isPermissionGranted})
      : super._();

  @override
  final bool isLoading;
  @override
  final bool? isPermissionGranted;

  @override
  String toString() {
    return 'WelcomeState(isLoading: $isLoading, isPermissionGranted: $isPermissionGranted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isPermissionGranted, isPermissionGranted) ||
                other.isPermissionGranted == isPermissionGranted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isPermissionGranted);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeStateImplCopyWith<_$WelcomeStateImpl> get copyWith =>
      __$$WelcomeStateImplCopyWithImpl<_$WelcomeStateImpl>(this, _$identity);
}

abstract class _WelcomeState extends WelcomeState {
  factory _WelcomeState(
      {required final bool isLoading,
      final bool? isPermissionGranted}) = _$WelcomeStateImpl;
  _WelcomeState._() : super._();

  @override
  bool get isLoading;
  @override
  bool? get isPermissionGranted;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WelcomeStateImplCopyWith<_$WelcomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
