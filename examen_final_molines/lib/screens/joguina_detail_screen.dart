import 'package:flutter/material.dart';
import '../models/joguina.dart';

class JoguinaDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Joguina joguina =
        ModalRoute.of(context)!.settings.arguments as Joguina;

    return Scaffold(
      appBar: AppBar(title: Text("${joguina.marca} ${joguina.model}")),
      body: Column(
        children: [
          Image.network(
            joguina.foto,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Text(
            "${joguina.descripcio} ${joguina.model}",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text("\$${joguina.marca}"),
          ElevatedButton(onPressed: () {}, child: Text("Alquilar Ahora")),
        ],
      ),
    );
  }
}
