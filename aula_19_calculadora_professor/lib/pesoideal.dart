import 'dart:math';
import 'package:flutter/material.dart';

//pubspec. yaml: blinking_text: ^1.0.2
//colocar depois do cupetino
import 'package:blinking_text/blinking_text.dart';

class PesoIdeal extends StatefulWidget {
  @override
  _PesoIdealState createState() => _PesoIdealState();
}

class _PesoIdealState extends State<PesoIdeal> {
  TextEditingController _controllerAltura = TextEditingController();
  TextEditingController _controllerPeso = TextEditingController();
  var _resultado = '';

  void _calcular() {
    double? valorAltura = double.tryParse(_controllerAltura.text);
    double? valorPeso = double.tryParse(_controllerPeso.text);

    if (valorAltura == null || valorPeso == null) {
      _resultado = 'Valor inválido!';
    } else {
      _resultado = '';
      double pesoIdeal = valorPeso / pow(valorAltura, 2);
    }
    if (valorAltura == null || valorPeso == null) {
      _resultado = 'Valor inválido!';
    } else {
      _resultado = '';
      double pesoIdeal = valorPeso / pow(valorAltura, 2);
      if (pesoIdeal < 16) {
        _resultado = 'Magreza grave';
      } else if (pesoIdeal > 16 && pesoIdeal <= 17) {
        _resultado = 'Magreza Moderada';
      } else if (pesoIdeal > 17 && pesoIdeal <= 18.5) {
        _resultado = 'Magreza leve';
      } else if (pesoIdeal > 18.5 && pesoIdeal <= 25) {
        _resultado = 'Saudável';
      } else if (pesoIdeal > 25 && pesoIdeal <= 30) {
        _resultado = 'Sobrepeso';
      } else if (pesoIdeal > 30 && pesoIdeal <= 40) {
        _resultado = _resultado = 'Obesidade Grau II';
      } else {
        _resultado = 'Obesidade grau III';
      }
    }
    //Limpando os campos
    _controllerAltura = TextEditingController(text: '');
    _controllerPeso = TextEditingController(text: '');

    //Reconstruir depois
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peso Ideal'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        //Colocando um recurso de Scroll
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Image.asset(
                  'images/imc_logo.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Cálculo do Peso Ideal, preencha as informações abaixo',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Entre com a altura (ex: 1.70)',
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  controller: _controllerAltura,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Entre com peso (ex: 70.5)',
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  controller: _controllerPeso,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: _calcular,
                    child: Text('Calcular!'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    //Efeito Blink
                    BlinkText(
                      _resultado,
                      style: TextStyle(
                        fontSize: 48.0,
                        color: Colors.redAccent,
                      ),
                      beginColor: Colors.black,
                      endColor: Colors.orange,
                      times: 10,
                      duration: Duration(seconds: 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
