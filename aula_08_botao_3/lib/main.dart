import 'package:flutter/material.dart';

main() => runApp(BotaoOutlineApp());

class BotaoOutlineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Botões de Contorno!',
      home: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                //Cor do foreground
                primary: Color(0xFFFCFAFA),
                //Cor da borda
                side: BorderSide(
                  width: 1,
                  color: Colors.orange,
                ),
              ),
              onPressed: () {},
              child: Text(
                'Meu Botão',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            //Forçar o espaçamento
            const SizedBox(
              height: 20,
            ),
            //Repita o Widget aqui!!!
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 243, 6, 6),
                side: BorderSide(
                  width: 1,
                  color: Colors.green,
                ),
              ),
              onPressed: () {},
              child: Text(
                'Meu Botão',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
