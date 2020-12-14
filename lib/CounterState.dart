import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'CounterState.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  factory CounterState({
    @Default(0) int count,
  }) = _Create;
}
