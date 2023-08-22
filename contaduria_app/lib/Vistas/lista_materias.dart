import 'package:contaduria_app/Vistas/Tematica.dart';
import 'package:contaduria_app/Vistas/home.dart';
import 'package:flutter/material.dart';
import '../Modelo/Modelo_Docente.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
export '../Vistas/docentes.dart';
import 'package:firebase_auth/firebase_auth.dart';

class listamaterias extends StatelessWidget {
  final User user = FirebaseAuth.instance.currentUser!; // El ID del docente por el que deseas filtrar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(0, 87, 144, 1),
                  Color.fromRGBO(0, 180, 165, 1)
                ],
              )),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Listado De Materias",
                        style: TextStyle(
                            fontFamily: 'Gotham_Bold',
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance.collection('Materias').doc(user.uid).get(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          var docenteData = snapshot.data!.data() as Map<String, dynamic>;
          List<String> materias = List<String>.from(docenteData['Materias'] ?? []);

          return ListView.builder(
            itemCount: materias.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(materias[index]),
              );
            },
          );
        },
      ),
    
                      ElevatedButton(
                          onPressed: () => {
                                // Función que se ejecutará cuando se haga clic en el botón
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tematica()))
                              },
                          child: Text('Crear Materia'))
                    ],
                  ),
                ),
              ),
            ),

            // Color de fondo del card (caja)
          ],
        ),
      ),
    );
  }
}
