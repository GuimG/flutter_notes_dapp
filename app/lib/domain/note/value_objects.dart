import 'package:dapp/domain/core/failures.dart';
import 'package:dapp/domain/core/value_objects.dart';
import 'package:dapp/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class NoteTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 30;

  factory NoteTitle(String input) {
    // If the first function returns left (failure) flatMap is going to be skipped
    return NoteTitle._(
      validateMaxLengthString(input, maxLength).flatMap(
        (value) => validateSingleLine(value),
      ),
    );
  }

  const NoteTitle._(this.value);
}

class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLength = 500;

  factory NoteBody(String input) {
    // If the first function returns left (failure) flatMap is going to be skipped
    return NoteBody._(
      validateMaxLengthString(input, maxLength),
    );
  }

  const NoteBody._(this.value);
}

class NoteColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;

  static const List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.yellow,
    Colors.purple,
    Colors.brown,
  ];

  factory NoteColor(Color input) {
    return NoteColor._(
      right(input),
    );
  }

  const NoteColor._(this.value);
}
