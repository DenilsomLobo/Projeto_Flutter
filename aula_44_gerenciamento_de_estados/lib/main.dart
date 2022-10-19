//O provider é um wrapper fácil de usar

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/botao_escolhe_prato.dart';
import 'widgets/navegacao_inferior.dart';

//Criando a classe de pratos favoritos
//Essa classe é um tipo de container de comida

class PratoFavorito extends ChangeNotifier {
  //
  //Atributos
  String prato = 'Escolha um tipo';

  //Esse método altera o tipo de prato
  void trocarPrato(String novoPrato) {
    prato = novoPrato;
    // Se houver mudança, notifica ao Provider
    notifyListeners();
  }
}

main() => runApp(
      //
      //Inserimos o provider no topo da aplicação para
      //estabelecermos uma comunicação na árvore de widget
      ChangeNotifierProvider(
        create: (context) => PratoFavorito(),
        child: const MeuApp(),
      ),
    );

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            //O provider se encarrega de fazer a mudança na AppBar
            'Prato Favorito ${Provider.of<PratoFavorito>(context).prato}',
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              //Botões criados separadamente para despoluir o main()
              BotaoEscolhePrato(prato: 'Arroz à Grega'),
              BotaoEscolhePrato(prato: 'Feijoada Completa'),
              BotaoEscolhePrato(prato: 'Bacalhau à Gomes de Sá'),
              BotaoEscolhePrato(prato: 'Mandioquinha com Torresmo'),
              BotaoEscolhePrato(prato: 'Dobradinha'),
              BotaoEscolhePrato(prato: 'Bife de Fígado Acebolado'),              
            ],
          ),
        ),
        //
        //BottomBar sepada da Classe Principal
        bottomNavigationBar: const NavegacaoInferior(),
      ),
    );
  }
}
