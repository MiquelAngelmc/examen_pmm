import 'package:examen_final_molines/screens/add.dart';
import 'package:examen_final_molines/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/routes.dart';

import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Inicializa Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen Miquel Àngel Molines Colom',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: AppRoutes.login, // Pantalla inicial (Login)
      routes: {
        '/home': (context) => HomeScreen(),
        '/add': (context) => AddJoguina(),

        ...AppRoutes.getRoutes(), // Mantiene otras rutas definidas
      },
    );
  }
}
