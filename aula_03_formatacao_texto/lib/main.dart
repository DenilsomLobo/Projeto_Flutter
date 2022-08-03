import 'package:flutter/material.dart';

main() => runApp(FormatacaoTextoApp());


class FormatacaoTextoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formatando Textos',
      home: Container(
        color: Colors.black,
        child: Column(
          children: [
            Text(
              'Texto para ser formatado!',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 40,
                fontWeight: FontWeight.normal,
                letterSpacing: 2,
                decoration: TextDecoration.none,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }

}