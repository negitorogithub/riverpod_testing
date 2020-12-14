// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'FooState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FooStateTearOff {
  const _$FooStateTearOff();

// ignore: unused_element
  _Create call({int fooCount = 0}) {
    return _Create(
      fooCount: fooCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FooState = _$FooStateTearOff();

/// @nodoc
mixin _$FooState {
  int get fooCount;

  $FooStateCopyWith<FooState> get copyWith;
}

/// @nodoc
abstract class $FooStateCopyWith<$Res> {
  factory $FooStateCopyWith(FooState value, $Res Function(FooState) then) =
      _$FooStateCopyWithImpl<$Res>;
  $Res call({int fooCount});
}

/// @nodoc
class _$FooStateCopyWithImpl<$Res> implements $FooStateCopyWith<$Res> {
  _$FooStateCopyWithImpl(this._value, this._then);

  final FooState _value;
  // ignore: unused_field
  final $Res Function(FooState) _then;

  @override
  $Res call({
    Object fooCount = freezed,
  }) {
    return _then(_value.copyWith(
      fooCount: fooCount == freezed ? _value.fooCount : fooCount as int,
    ));
  }
}

/// @nodoc
abstract class _$CreateCopyWith<$Res> implements $FooStateCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) then) =
      __$CreateCopyWithImpl<$Res>;
  @override
  $Res call({int fooCount});
}

/// @nodoc
class __$CreateCopyWithImpl<$Res> extends _$FooStateCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(_Create _value, $Res Function(_Create) _then)
      : super(_value, (v) => _then(v as _Create));

  @override
  _Create get _value => super._value as _Create;

  @override
  $Res call({
    Object fooCount = freezed,
  }) {
    return _then(_Create(
      fooCount: fooCount == freezed ? _value.fooCount : fooCount as int,
    ));
  }
}

/// @nodoc
class _$_Create with DiagnosticableTreeMixin implements _Create {
  _$_Create({this.fooCount = 0}) : assert(fooCount != null);

  @JsonKey(defaultValue: 0)
  @override
  final int fooCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FooState(fooCount: $fooCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FooState'))
      ..add(DiagnosticsProperty('fooCount', fooCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Create &&
            (identical(other.fooCount, fooCount) ||
                const DeepCollectionEquality()
                    .equals(other.fooCount, fooCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fooCount);

  @override
  _$CreateCopyWith<_Create> get copyWith =>
      __$CreateCopyWithImpl<_Create>(this, _$identity);
}

abstract class _Create implements FooState {
  factory _Create({int fooCount}) = _$_Create;

  @override
  int get fooCount;
  @override
  _$CreateCopyWith<_Create> get copyWith;
}
