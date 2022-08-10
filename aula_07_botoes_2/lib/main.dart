import 'package:flutter/material.dart';

main() => runApp(BotaoElevadoApp());

class BotaoElevadoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bot~es de Elevação!',
      home: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //cor background
                primary: Colors.amber,
                //cor foreground
                onPrimary: Colors.white,
              ),
              onPressed: () {
                print('Ação ao pressionar o botão!');
              },
              child: Text(
                'Meu botão',
                style: TextStyle(fontSize: 20),
              ),
            ),
            //Forçar o espaçamento
            const SizedBox(
              height: 20,
            ),
            //Repita o Widget aqui!!!
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
              ),
              onPressed: () {
                print('Ação ao pressionar o botão 2!');
              },
              child: Text(
                'Meu botão',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
