import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'add.dart';
import 'joguina_detail_screen.dart';
import 'home_screen.dart';

// Classe on estaran ses rutes de s'aplicació

class AppRoutes {
  static const String login = '/login';

  static const String home = '/home';

  static const String add = '/add';

  static const String joguinaDetail = '/joguinaDetail';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => LoginScreen(),

      // Ruta a home
      home: (context) => HomeScreen(),
      add: (context) => AddJoguina(),
      //joguinaDetail => JoguinaDetailScreen(),
    };
  }
}
