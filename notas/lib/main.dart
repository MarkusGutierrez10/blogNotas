import 'package:flutter/material.dart';
import 'package:notas/presentation/display/guardarNotas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notas",
      debugShowCheckedModeBanner: false,
      home: PantallaBienvenida(),
    );
  }
}

class PantallaBienvenida extends StatelessWidget {
  PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 235, 232, 206),
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 228, 181, 41),
        title: Text("Notas"),
      ),
      body: Center(
        child: Text(
          "Bienvenido al bloc de notas",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      // Botón flotante para ir a la pantalla del formulario
      floatingActionButton: FloatingActionButton(
        backgroundColor:  Color.fromARGB(255, 236, 189, 48),
        onPressed: () {
          // Navega hacia la pantalla del formulario
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GuardarNotas(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}