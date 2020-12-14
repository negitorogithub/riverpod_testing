// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'CounterState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CounterStateTearOff {
  const _$CounterStateTearOff();

// ignore: unused_element
  _Create call({int count = 0}) {
    return _Create(
      count: count,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CounterState = _$CounterStateTearOff();

/// @nodoc
mixin _$CounterState {
  int get count;

  $CounterStateCopyWith<CounterState> get copyWith;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

/// @nodoc
abstract class _$CreateCopyWith<$Res> implements $CounterStateCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) then) =
      __$CreateCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class __$CreateCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(_Create _value, $Res Function(_Create) _then)
      : super(_value, (v) => _then(v as _Create));

  @override
  _Create get _value => super._value as _Create;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_Create(
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

/// @nodoc
class _$_Create with DiagnosticableTreeMixin implements _Create {
  _$_Create({this.count = 0}) : assert(count != null);

  @JsonKey(defaultValue: 0)
  @override
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CounterState(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CounterState'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Create &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @override
  _$CreateCopyWith<_Create> get copyWith =>
      __$CreateCopyWithImpl<_Create>(this, _$identity);
}

abstract class _Create implements CounterState {
  factory _Create({int count}) = _$_Create;

  @override
  int get count;
  @override
  _$CreateCopyWith<_Create> get copyWith;
}
