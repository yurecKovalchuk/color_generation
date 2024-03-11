import 'dart:math';

import 'package:color_generation/features/generation_color/bloc/color_generation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// BLoC (Business Logic Component) for managing color generation state.
class ColorGenerationBloc extends Cubit<ColorGenerationState> {
  /// Constructor for the ColorGenerationBloc.
  ColorGenerationBloc()
      : super(
          const ColorGenerationState(
            backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        );

  /// Sets a random background color and emits a new state.
  void setRandomBackgroundColor() {
    final Random random = Random();
    final generateColor = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,
    );
    emit(
      state.copyWith(
        backgroundColor: generateColor,
      ),
    );
  }
}
