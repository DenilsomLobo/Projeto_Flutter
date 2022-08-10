import 'package:flutter/material.dart';

main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // Estrutura de 3 áreas Cabeçalho, corpo e rodapé
          appBar: AppBar(
            title: Text('Minha aplicação com Scaffold'),
            backgroundColor: Colors.amber,
          ),
          body: Padding(
            padding: EdgeInsets.all(50),
            child: Text(
              'Corpo da Aplicação!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            // Aplicar uma cor
            color: Colors.lightBlue,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text('Home'),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Agenda',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  Text('Contato')
                ],
              ),
            ),
          ),
        ),
      ),
    );
