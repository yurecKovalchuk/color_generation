/// Represents data for a route in the application.
///
/// A route data object contains information such as the name and path
/// of a specific route.
class RouteData {
  /// Name of the route.
  final String name;

  /// Path to the route.
  final String path;

  /// Creates route data.
  ///
  /// - [name]: Name of the route.
  /// - [path]: Path to the route.
  const RouteData({
    required this.name,
    required this.path,
  });
}

/// Defines constants for named routes in the application.
///
/// The [AppRoutInfo] class serves as a central location for defining
/// named routes used in the application. Each route is represented by
/// a [RouteData] object containing information such as the route name
/// and path. These constants are then used for navigation throughout
/// the app.
abstract class AppRoutInfo {
  /// Route data for the color generation screen.
  static const colorGenerationScreen = RouteData(
    name: 'color_generation_screen',
    path: '/',
  );
}
