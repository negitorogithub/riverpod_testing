import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'MyState.freezed.dart';

@freezed
abstract class MyState with _$MyState {
  factory MyState() = _Create;
}
