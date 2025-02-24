import 'package:examen_final_molines/models/joguina.dart';

import 'routes.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import '../../models/vehicle_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Juguetes Disponibles")),
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance
                //juguetes
                .collection('jogines')
                .where('available', isEqualTo: true)
                .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());

          var joguines =
              snapshot.data!.docs
                  .map(
                    (doc) =>
                        Joguina.fromMap(doc.data() as Map<String, dynamic>),
                  )
                  .toList();

          return ListView.builder(
            itemCount: joguines.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  "${joguines[index].marca} ${joguines[index].model}",
                ),
                subtitle: Text("\$${joguines[index].descripcio}"),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.add);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
