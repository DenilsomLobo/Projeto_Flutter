import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

//Api para exemplificar
//https://jsonplaceholder.typicode.com/posts

main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MeuAppPost(),
    ));

class MeuAppPost extends StatefulWidget {
  const MeuAppPost({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MeuAppPostState createState() => _MeuAppPostState();
}

class _MeuAppPostState extends State<MeuAppPost> {
  //
  final url = 'https://jsonplaceholder.typicode.com/posts';
  var _postsJson = [];
  //
  void buscaPosts() async {
    //Try para testar a comunicação
    try {
      final response = await get(Uri.parse(url));
      final infoJson = jsonDecode(response.body) as List;
      //
      setState(() {
        _postsJson = infoJson;
      });
    } catch (err) {}
  }

  @override
  Widget build(BuildContext context) {
    //Iniciando a função
    buscaPosts();
    //
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha aplicação Post'),
        backgroundColor: Colors.blueAccent,
      ),
      //
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            //
            Expanded(
              child: ListView.builder(
                itemCount: _postsJson.length,
                itemBuilder: (context, indice) {
                  final post = _postsJson[indice];
                  return ListTile(
                    title: Text(
                      'Título: ${post['title']}\n',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.redAccent,
                      ),
                    ),
                    subtitle: Text(
                      'Descrição: ${post['body']}\n',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.brown,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'chat',
          )
        ],
      ),
    );
  }
}
