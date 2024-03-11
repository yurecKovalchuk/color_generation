import 'package:color_generation/features/features.dart';
import 'package:color_generation/localization/l10n/l10n.dart';
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
        final textColor = state.backgroundColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

        return GestureDetector(
          onTap: bloc.setRandomBackgroundColor,
          child: Scaffold(
            backgroundColor: state.backgroundColor,
            body: Center(
              child: Text(
                context.l10n.greetingMessage,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
          ),
        );
      },
    );
  }
}
