import 'package:contaduria_app/Vistas/home.dart';
import 'package:flutter/material.dart';
import '../Modelo/Modelo_Docente.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Tematica extends StatelessWidget {
  // El ID del docente por el que deseas filtrar

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
                        "Listado De Tematicas",
                        style: TextStyle(
                            fontFamily: 'Gotham_Bold',
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      
                      
                      ElevatedButton(
                          onPressed: () => {
                                // Función que se ejecutará cuando se haga clic en el botón
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tematica()))
                              },
                          child: Text('Crear Tematica'))
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
