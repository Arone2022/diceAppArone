import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int DadoIzquierdo = Random().nextInt(6) + 1; // 0 - 5;
  int DadoDerecho = Random().nextInt(6) + 1; // 0 - 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("DiceApp"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 10.0,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  DadoIzquierdo = Random().nextInt(6) + 1; // 0 - 5
                  DadoDerecho = Random().nextInt(6) + 1; // 0 - 5;
                  setState(() {});
                },
                child: Image.asset(
                  "imagenes/dice$DadoIzquierdo.png",
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
