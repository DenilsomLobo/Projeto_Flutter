import 'package:flutter/material.dart';

main() => runApp(BotaoElevadoIconeApp());

class BotaoElevadoIconeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Botões de Elevação!',
      home: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 1,
                  color: Colors.amber,
                ),
                primary: Colors.red,
                onPrimary: Colors.white,
              ),
              onPressed: () {},
              icon: Icon(
                Icons.add_a_photo,
                color: Colors.white,
              ),
              label: Text('Label do botão'),
            ),
            //Forçar o espaçamento
            const SizedBox(
              height: 20,
            ),
            //Repita o widget aqui!!!
          ],
        ),
      ),
    );
  }
}
