// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

main() => runApp(BotaoElevadoInativoApp());

// ignore: use_key_in_widget_constructors
class BotaoElevadoInativoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Botões de Elevação!',
        home: Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onSurface: Colors.red[200],
                ),
                onPressed: null,
                child: Text(
                  'Botão desativado!',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              //Forçar o espaçamento
              const SizedBox(
                height: 20,
              ),
              //Repita o Widget aqui!!
            ],
          ),
        ),
      );
  }
}
