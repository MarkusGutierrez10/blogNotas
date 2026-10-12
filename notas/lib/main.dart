import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Notas",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 232, 206),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 228, 181, 41),
          title: Text("Notas"),
        ),
      ),
    );
  }
}