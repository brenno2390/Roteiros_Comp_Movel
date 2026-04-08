import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela 1"),
      ),
      body: Center(
        child: Column(children: [
          Text("Você está na Tela Inicial"),
          ElevatedButton(
          child: const Text("Ir para Detalhe"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Tela2(nome: "Joao"),
              ),
            );
          },
        )
        ],),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  final String nome;

  const Tela2({super.key, required this.nome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Você está na Tela de Detalhe"),
      ),
      body: Center(
        child: Text("Você está na Tela de Detalhe"),
      ),
    );
  }
}