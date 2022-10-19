import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> criarAlbum(String titulo) async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': titulo,
    }),
  );

  if (response.statusCode == 201) {
    // Se o servidor retornou uma resposta 201, analise o Json
    return Album.doJason(jsonDecode(response.body));
  } else {
    // Se o servidor não retornou uma resposta 201, lance uma exceção
    throw Exception('Falha na criação do seu Álbum!');
  }
}

class Album {
  final String titulo;

  Album({required this.titulo});

  //Factory: É como uma interface/classe abstrata no Dart
  //Usamos factory para ceder objetos sem se importar com seu tipo
  //Exemplo AlertDialog (diferente para Android e Ios)
  factory Album.doJason(Map<String, dynamic> json) {
    return Album(
      titulo: json['title'],
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //
  final TextEditingController _controllerEntrada = TextEditingController();
  //
  Future<Album>? _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabalhando com Future',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Trabalhando com Future'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureAlbum == null) ? criaColuna() : criaFutureBuilder(),
        ),
      ),
    );
  }

  Column criaColuna() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controllerEntrada,
          decoration: const InputDecoration(hintText: 'Digite um Título'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureAlbum = criarAlbum(_controllerEntrada.text);
            });
          },
          child: const Text('Criando uma informação'),
        ),
      ],
    );
  }

  FutureBuilder<Album> criaFutureBuilder() {
    return FutureBuilder<Album>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.titulo);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        //Mostrar um símbolo de progresso
        return const CircularProgressIndicator();        
      },
    );
  } 
}
