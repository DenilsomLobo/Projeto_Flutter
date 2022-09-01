//Entrada de dados
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculadora(),
    ));

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  //Iniciando um controlador
  TextEditingController _EntradaCalculadoraController1 =
      new TextEditingController();
  TextEditingController _EntradaCalculadoraController2 =
      new TextEditingController();

  //Variável para saída
  String _resposta = 'Resultado';

  void recuperarValor() {
    setState(() {
      double? _valor1 = double.parse(_EntradaCalculadoraController1.text);
      double? _valor2 = double.parse(_EntradaCalculadoraController2.text);
      double resultado = (_valor1 + _valor2);
      _resposta = resultado.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Média'),
        backgroundColor: Color.fromARGB(255, 34, 162, 242),
      ),
      body: Column(
        children: [
// Imagens
          Container(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(1),
                  child: Image.asset(
                    'imagens/banner.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),

// Texto
          Container(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    'Preencha os campos abaixo',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),

//Valor 01

          Padding(
            padding: EdgeInsets.all(20),
            //Entrada (input)
            child: TextField(
              //TextInputType.text, .number, emailAdress
              keyboardType: TextInputType.number,
              //Informação para o o usuário
              decoration: InputDecoration(
                labelText: 'Digite o primeiro valor',
              ),
              //Habilitando e desabilitando um campo
              enabled: true,

              //Pegar o valor
              controller: _EntradaCalculadoraController1,
            ),
          ),

//Valor 02

          Padding(
            padding: EdgeInsets.all(20),
            //Entrada (input)
            child: TextField(
              //TextInputType.text, .number, emailAdress
              keyboardType: TextInputType.number,
              //Informação para o o usuário
              decoration: InputDecoration(
                labelText: 'Digite o segundo valor',
              ),
              //Habilitando e desabilitando um campo
              enabled: true,

              //Pegar o valor
              controller: _EntradaCalculadoraController2,
            ),
          ),

          ElevatedButton(
            onPressed: recuperarValor,
            child: Text(
              'Calcular',
            ),
          ),

        const SizedBox(
          height: 20,
        ),          

          OutlinedButton(
            style: ElevatedButton.styleFrom(
              onSurface: Colors.red[200],
            ),
            onPressed: null,
            child: Text(
              _resposta,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),

          /*         Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              _resposta,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
          ), */
        ],
      ),
    );
  }
}
