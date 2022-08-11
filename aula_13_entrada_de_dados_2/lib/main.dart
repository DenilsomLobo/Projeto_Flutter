import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


main() => runApp(MaterialApp(
      home: Entradas(),
    ));

class Entradas extends StatefulWidget {
  @override
  _EntradasState createState() => _EntradasState();
}

class _EntradasState extends State<Entradas> {
  //Iniciando um controlador
  TextEditingController _textEditingController = new TextEditingController();

  //Variável para saída
  String _resposta = 'Resultado';

  void recuperarValor() {
    setState(() {
      _resposta = _textEditingController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),

            //Entrada (input)
            child: TextField(
              //TextInputType.text, .number, .emailAdress
              keyboardType: TextInputType.text,
              //informação para o usuário
              decoration: InputDecoration(
                labelText: 'Digite alguma coisa',
              ),
              //Habilitando e desabilitando um campo
              enabled: true,

              //Tamanho máximo do campo
              maxLength: 5,

              //Controlador do maxLength
              //enforced: Não deixa passar da quantidade de dígitos
              //pré-determinada
              //none: libera a digitação com aviso visual
              maxLengthEnforcement: MaxLengthEnforcement.none,

              //Estilo para o inputText
              style: TextStyle(
                fontSize: 20,
                color: Colors.redAccent,
              ),

              //Escondendo o texto (password)
              obscureText: false, //true / false

              //Pegar o valor
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: recuperarValor,
            child: Text(
              'Salvar',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              _resposta,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
