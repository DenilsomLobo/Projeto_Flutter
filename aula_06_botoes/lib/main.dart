import 'package:flutter/material.dart';

main() => runApp(BotaoTextoApp());

// ignore: use_key_in_widget_constructors
class BotaoTextoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Botões de Texto',
      home: Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                primary: Colors.pinkAccent,
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 32,
                ),
              ),
              onPressed: () {
                print('O botão foi presionado!');
              },
              child: Text(
                'Meu botão A',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            //Forçar o espaçamento
            const SizedBox(
              height: 20,
            ),
            //Repita o Widget aqui!!!
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                primary: Colors.yellow,
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 32,
                ),
              ),
              onPressed: () {
                print('O botão foi presionado!');
              },
              child: Text(
                'Meu botão B',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
