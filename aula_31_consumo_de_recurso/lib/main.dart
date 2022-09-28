import 'package:flutter/material.dart';
//Importando a dependência
import 'package:http/http.dart' as http;
//Importar uma biblioteca conversora para Json
import 'dart:convert';

main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Controller do textfield
  final TextEditingController _entrada = TextEditingController();

  //Criando as variáveis
  String? _logradouro = '';
  String? _complemento = '';
  String? _bairro = '';
  String? _localidade = '';
  String? _uf = '';

  _buscaCep() async {
    int? cep = int.tryParse(_entrada.text);

    const String authority = 'viacep.com.br';
    final String path = 'ws/$cep/json/';

    var response = await http.get(Uri.https(authority, path));

    //Decodificando Json e passando para um Map
    Map<String, dynamic> objetoJason = json.decode(response.body);

    setState(() {
      _logradouro = objetoJason['logradouro'];
      _complemento = objetoJason['complemento'];
      _bairro = objetoJason['bairro'];
      _localidade = objetoJason['localidade'];
      _uf = objetoJason['uf'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumo de Recursos: API CEP'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: 'Entre com o o CEP',
              ),
              style: const TextStyle(
                fontSize: 18,
              ),
              controller: _entrada,
            ),
            ElevatedButton(
              onPressed: _buscaCep,
              child: const Text('Buscar endereço'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Endereço: $_logradouro'),
                Text('Complemento: $_complemento'),
                Text('Bairro: $_bairro'),
                Text('Localidade: $_localidade'),
                Text('UF: $_uf')
              ],
            )
          ],
        ),
      ),
    );
  }
}
