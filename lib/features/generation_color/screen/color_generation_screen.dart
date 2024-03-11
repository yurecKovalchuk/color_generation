import 'package:color_generation/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Represents the screen for color generation in the application.
class ColorGenerationScreen extends StatelessWidget {
  /// Constructor for the ColorGenerationScreen.
  const ColorGenerationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ColorGenerationBloc>(context);

    return BlocBuilder<ColorGenerationBloc, ColorGenerationState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: bloc.setRandomColor,
          child: Scaffold(
            backgroundColor: state.backgroundColor,
            body: const Center(
              child: Text('Hello there'),
            ),
          ),
        );
      },
    );
  }
}
