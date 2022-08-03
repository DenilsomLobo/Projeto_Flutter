// Material.dart é o componente de construção do App
import 'package:flutter/material.dart';

//Primeiro precisamos colocar a função principal para dar start na aplicação
void main() {
  //Rodando a aplicação
  runApp(OlaMundoApp());
}

//ou Arrow Function(Nos próximos vamos usar a estrutura abaixo)

/*
void main() => runApp(new OlaMundoApp());
*/

//Para criar o App é preciso usar herança
// OlaMundoApp herdará de StatelessWidget
class OlaMundoApp extends StatelessWidget {
  // É preciso a implementação de um método construtor para aplicação
  // a utilização do decorator e opcional
  @override
  Widget build(BuildContext context) {
    // O construtor retornará o componente de construção do App
    return MaterialApp(
      //implentação dos parâmetros nomeados de Material App
      // Para visualizar o que temos à disposição, basta teclar CTRL + Espaço
      title: 'Meu App',
      home: Container(
        color: Colors.white,
        child: Column(
          children: [
            Text('Olá Mundo!'),
            Text('Tudo de boas?'),
          ],
        ),
      ),
    );
  }
}
