import 'package:color_generation/app/app.dart';
import 'package:color_generation/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

/// The main application widget that configures and initializes the routing
/// system.
/// The [ApplicationWidget] class is responsible for setting up the
/// application's routing using the [GoRouter] package. It defines the initial
/// route, enables debug diagnostics, and provides routes for different screens
/// in the app.
class ApplicationWidget extends StatelessWidget {
  /// Initializes the application widget.
  ///
  /// [key]: An optional key to identify this widget.
  ApplicationWidget({
    super.key,
  });

  late final GoRouter _router = _buildRouting();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }

  GoRouter _buildRouting() {
    return GoRouter(
      initialLocation: AppRoutInfo.colorGenerationScreen.path,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: AppRoutInfo.colorGenerationScreen.path,
          name: AppRoutInfo.colorGenerationScreen.name,
          builder: (context, state) {
            return BlocProvider<ColorGenerationBloc>(
              create: (BuildContext context) => ColorGenerationBloc(),
              child: const ColorGenerationScreen(),
            );
          },
        ),
      ],
    );
  }
}
