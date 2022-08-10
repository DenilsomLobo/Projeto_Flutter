import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Entrada(),
    ));

class Entrada extends StatefulWidget {
  @override
  _EntradaState createState() => _EntradaState();
}

class _EntradaState extends State<Entrada> {
  //Lógica
  TextEditingController _textEditingController = TextEditingController();
  String _resposta = 'Resultado';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada 2 App'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Digite alguma coisa',
                enabled: true,
              ),

              //onChanged: quanto o usuário for digitando
              //onSubmitted: quando o usuário confirmar
              onSubmitted: (String texto) {
                setState(() {
                  _resposta = texto;
                });
              },

              //controlador
              controller: _textEditingController,
            ),
          ),
          Text(_resposta)
        ],
      ),
    );
  }
}
