import 'package:flutter/material.dart';

main() => runApp(ImagemApp());

class ImagemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trabalhando com imagens',
      home: Container(
        margin: EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 2,
            color: Colors.amber,
          ),
        ),
        child: Image.asset(
          'imagens/passeio.jpg',
          fit: BoxFit.contain,
        ),
      ),
    );

    /* DEFINIÇÕES ---------------------------------------------------
    fit: BoxFit.cover
    Cobre todo o espaçamento cortanto a imagem 

    fit: BoxFit.contain
    Valor padrão

    fit: BoxFit.fill
    Preenche com distorção

    fit: BoxFit.fitHeight
    preencher pela altura (Largura na proporção)

    fit: BotFit.fitWidth
    preencher pela largura (altura na proporção)

    fit: BoxFit.none
    Mantem a imagem original
     */
  }
}