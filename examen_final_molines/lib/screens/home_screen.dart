import 'routes.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import '../../models/vehicle_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehículos Disponibles")),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('vehicles').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView(
            children:
                snapshot.data!.docs.map((DocumentSnapshot document) {
                  //final vehicle = Vehicle.fromSnapshot(document);
                  return ListTile(
                    // title: Text(document['brand']),

                    // subtitle: Text(document['model']),
                    // trailing: Text(document['price'].toString()),
                    title: Text("Hola"),
                  );
                }).toList(),
          );
        },
      ),
    );
  }
}
