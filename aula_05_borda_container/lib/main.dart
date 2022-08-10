import 'package:flutter/material.dart';

main() => runApp(MargemPaddingApp());

class MargemPaddingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Removendo a faixa de Debug
      debugShowCheckedModeBanner: false,

      title: 'Margens e Espaçamentos',
      home: Container(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          border: Border.all(width: 5, color: Colors.amber),
        ),
        child: Column(
          children: [
            Text(
              'Texto para visualização das formatações do App!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
