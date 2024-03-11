import 'dart:ui';

/// Represents the state for color generation in the application.
class ColorGenerationState {
  /// The background color of the screen.
  final Color backgroundColor;

  /// Constructor for the ColorGenerationState.
  const ColorGenerationState({
    required this.backgroundColor,
  });

  /// Creates a copy of the current state with a new background color.
  ///
  /// [backgroundColor]: The new background color.
  /// If not provided, the existing color will be used.
  ColorGenerationState copyWith({
    Color? backgroundColor,
  }) {
    return ColorGenerationState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
