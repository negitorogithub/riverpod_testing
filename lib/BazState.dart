import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'BazState.freezed.dart';

@freezed
abstract class BazState with _$BazState {
  factory BazState() = _Create;
}
