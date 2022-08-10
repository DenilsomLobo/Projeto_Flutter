import 'package:flutter/material.dart';

main() => runApp(AlinhamentoApp());

class AlinhamentoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alinhamentos',
      home: Container(
        margin: EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
            border: Border.all(
          width: 5,
          color: Colors.blue,
        )),
        child: Row(
          children: [
            Text(
              'A-1',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30,
              ),
            ),
            Text(
              'A-2',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30,
              ),
            ),
            Text(
              'A-3',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30,
              ),
            )
          ],
          //Alinhando minha Row
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //Eixo que cruza o alinhamento principal
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}


