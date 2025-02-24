import 'home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String login = '/login';

  static const String home = '/home';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      // Asegúrate de que esta ruta esté definida
      home: (context) => HomeScreen(),
    };
  }
}
