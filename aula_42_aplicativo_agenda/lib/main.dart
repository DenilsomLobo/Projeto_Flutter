import 'package:flutter/material.dart';
import 'views/tela_notas.dart';

void main() => runApp(
      const Agenda(),
    );

class Agenda extends StatelessWidget {
  const Agenda({super.key});

  @override
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const TelaNotas(),
    );
  }
}
