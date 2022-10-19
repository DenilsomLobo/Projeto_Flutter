import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/main.dart';

class BotaoEscolhePrato extends StatelessWidget {
  // const BotaoEscolhePrato({super.key});
  //Atributos
  final String prato;
  //Contrutor
  const BotaoEscolhePrato({super.key, required this.prato});

  @override
  Widget build(BuildContext context) {
    //Se eu quero um botão preciso retornar um botão
    return ElevatedButton(
      //Estilizando o botão
      style: ElevatedButton.styleFrom(
        //padding: EdgeInsets.all(20),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
        minimumSize: const Size(300, 40)),
      onPressed: () {
        //Eu quero escutar (observar) o evento
        //Quero acionar a mudança
        Provider.of<PratoFavorito>(
          context,
          listen: false,
        ).trocarPrato(prato);
      },
      child: Text(
        prato,
        style: const TextStyle(fontSize: 20,),
      ),
    );
  }
}
