import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'FooState.freezed.dart';

@freezed
abstract class FooState with _$FooState {
  factory FooState({
    @Default(0) int count,
  }) = _Create;
}
