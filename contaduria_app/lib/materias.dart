import 'package:flutter/material.dart';

class materias extends StatelessWidget {
  const materias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materias'),
      ),
      
      body: Center(
        child: Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Bordes redondeados de la tarjeta
      ),
      child: Container(
        width: 150,
        height: 150,
        padding: EdgeInsets.all(16), // Espacio interno dentro de la tarjeta
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Título',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Descripción de la tarjeta',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      ),
      ),
    );
  }
}
