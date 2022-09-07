import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Gesture(),
    ));

class Gesture extends StatefulWidget {
  @override
  _GestureState createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  String _personagem = '';
  var _imagem = AssetImage('images/imagem.png');

  personagemEscolhido(String personagem) {
    if (personagem == 'joao') {
      _personagem = 'Você escolheu o João!';
      _imagem = AssetImage('images/jo.png');
    } else if (personagem == 'juliana') {
      _personagem = 'Você escolheu a Juliana!';
      _imagem = AssetImage('images/ju.png');
    } else {
      _personagem = 'Você escolheu o José!';
      _imagem = AssetImage('images/ze.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture App'),
        backgroundColor: Color(0xffcd853f),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),

        //Primeiro uma coluna
        child: Column(
          children: [
            //Agora uma Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Detecção de toque na tela
                GestureDetector(
                  onTap: () {
                    setState(() {
                      personagemEscolhido('joao');
                    });
                  },
                  child: Image.asset(
                    'images/joao.png',
                    width: 100,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      personagemEscolhido('juliana');
                    });
                  },
                  child: Image.asset(
                    'images/Juliana.png',
                    width: 100,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      personagemEscolhido('jose');
                    });
                  },
                  child: Image.asset(
                    'images/jose.png',
                    width: 100,
                  ),
                )
              ],
            ),
            //Mais uma coluna
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    'Escolha um personagem',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: _imagem,
                          width: 100,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      _personagem,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.orange,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
