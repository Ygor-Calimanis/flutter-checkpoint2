import 'package:flutter/material.dart';
import 'package:checkpoint2/lista_contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHECKPOINT 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListaContatos(),
    );
  }
}
