import 'dart:math';
import 'package:flutter/material.dart';

class Jokenpo extends StatefulWidget {
  const Jokenpo({super.key});

  @override
  State<Jokenpo> createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  Map<String, String> condicao = {
    "pedra": "tesoura",
    "tesoura": "papel",
    "papel": "pedra"
  };

//Declaração de dados:
  String _resultado = '';
  var _imgResultado = AssetImage('images/padrao.png');

  List escolhas = ['pedra', 'papel', 'tesoura'];

//Função:
  void jogar(String jogador) {
    String escolhaNpc = escolhas.elementAt(Random().nextInt(3));

    if (escolhaNpc == 'pedra') {
      _imgResultado = AssetImage('images/pedra.png');
    } else if (escolhaNpc == 'papel') {
      _imgResultado = AssetImage('images/papel.png');
    } else if (escolhaNpc == 'tesoura') {
      _imgResultado = AssetImage('images/tesoura.png');
    }

    if (escolhaNpc == jogador) {
      _resultado = 'Empatou!!!';
    } else if (condicao[escolhaNpc] == jogador) {
      _resultado = 'Maquina venceu!!!';
    } else if (condicao[jogador] == escolhaNpc) {
      _resultado = 'Você venceu!!!';
    }
  }

//Contrutor:
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokenpo'),
      ),
      body: Center(
//ScrollView
         child: SingleChildScrollView(
//Coluna 1
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              'Escolha do App',
              style: TextStyle(fontSize: 26),
            ),
            Image(
              image: _imgResultado,
              width: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              _resultado,
              style: TextStyle(fontSize: 26),
            ),
            const SizedBox(
              height: 20,
            ),


//Aplicando GestureDetector
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      jogar('pedra');
                    });
                  },
                  child: Image.asset('images/pedra.png'),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        jogar('papel');
                      });
                    },
                    child: Image.asset('images/papel.png')),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      jogar('tesoura');
                    });
                  },
                  child: Image.asset('images/tesoura.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}
