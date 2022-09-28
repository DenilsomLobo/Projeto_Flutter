import 'package:flutter/material.dart';
//Importando a dependência
import 'package:http/http.dart' as http;
//Importar uma biblioteca conversora
import 'dart:convert';

main() => runApp(
      MaterialApp(
        home: Bitcoin(),
      ),
    );

// ignore: use_key_in_widget_constructors
class Bitcoin extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _BitcoinState createState() => _BitcoinState();
}

class _BitcoinState extends State<Bitcoin> {
  String _valor = '0';
  _buscaValor() async {
    var response = await http.get(Uri.https('blockchain.info', '/pt/ticker'));
    Map<String, dynamic> objetoJason = json.decode(response.body);

    setState(
      () {
        _valor = objetoJason['BRL']['15m'].toString();
        // ignore: avoid_print
        print(_valor);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cotação Bitcoin'),
          backgroundColor: Colors.amber,
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'images/bitcoin.png',
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      'Valor do Bitcoin R\$$_valor',
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _buscaValor,
                    child: const Text('Cotação'),
                  )
                ],
              ),
            ),
          ),
        ),
      );
  }
}
