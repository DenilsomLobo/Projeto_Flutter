import 'package:flutter/material.dart';

main() => runApp(
      MaterialApp(
        home: Lista(),
      ),
    );

// ignore: use_key_in_widget_constructors
class Lista extends StatefulWidget {
  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  //Lógica
  List _produtos = [];

  void _carregarItens() {
    //Para não repetir os itens
    _produtos = [];

    for (var i = 0; i <= 8; i++) {
      //Map para guardar as informações
      Map<String, dynamic> item = {};
      item['titulo'] = 'Título $i Lorem Ipsum dolor sit amet';
      item['descricao'] = 'Descrição $i ipsum dolor sit amet';

      //Adicionando os itens ao Map
      _produtos.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    //Carregando os itens
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: const Text('App ListView'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            //Aumenta e diminui o espaçp do widget
            Expanded(
              child: ListView.builder(
                //Quatidade de itens
                itemCount: _produtos.length,
                //Construção da lista, baseadas no contexto
                itemBuilder: (context, indice) {
                  return ListTile(
                    title: Text(_produtos[indice]['titulo']),
                    subtitle: Text(_produtos[indice]['descricao']),
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
            icon: Icon(Icons.favorite),
            label: 'Chat',
            ),
        ],
      ),
    );
  }
}
