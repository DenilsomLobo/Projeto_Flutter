import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pessoa {
  final String nome;
  final int idade;

  Pessoa({required this.nome, required this.idade});
}

void main() {
  runApp(
    Provider(
      create: (_) => Pessoa(
        nome: "John Doe",
        idade: 40,
      ),
      child: const MeuApp(),
    ),
  );
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MinhaPagina(),
    );
  }
}

class MinhaPagina extends StatelessWidget {
  const MinhaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testando Provider'),
      ),
      body: Center(
        child: Text(
          /*
          Na String abaixo usamos Provider para buscar a instância
          de `Pessoa` criada acima na propriedade `create`          
          */
          '''
          Olá ${context.select((Pessoa p) => p.nome)}!
          Você tem ${Provider.of<Pessoa>(context).idade} anos de idade!
          ''',
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

