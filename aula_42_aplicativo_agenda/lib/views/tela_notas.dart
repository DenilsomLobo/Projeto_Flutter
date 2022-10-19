import 'package:flutter/material.dart';
import 'package:aula_42/models/exports.dart';

class TelaNotas extends StatefulWidget {
  const TelaNotas({super.key});

  @override
  State<TelaNotas> createState() => _TelaNotasState();
}

class _TelaNotasState extends State<TelaNotas> {
  // um instância de Nota
  final notas = Nota();

  // para não ter problemas de scroll
  // Na passagem do App Android para IoS
  late ScrollController scrollController;

  @override
  //Adicionando um ouvinte para o scroll
  // na inicialização do App
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  /*
  Desmonta o etado do objeto
  Este método de limpeza é chamado quando o estado do
  objeto é removido da árvore de widgets.
  Está é a última oporunidade de limpar todos
  os recursos que precisam ser liberados explicitamente.
  */

  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Agenda'),
        backgroundColor: Colors.blueGrey,
      ),
      body: _construirLista(),
      floatingActionButton: _botaoAdicionarTarefa(),
    );
  }

  //
  Widget _construirLista() {
    return ListView.builder(
      //Verificando a quantidade de tarefas
      itemCount:  notas.tarefas.length,
      itemBuilder: (context, indice) =>
      _construirItemLista( notas.tarefas[indice],
      ),
    );
  }

 //
 Widget _botaoAdicionarTarefa() {
  return FloatingActionButton(
    child: const Icon(Icons.add),
    onPressed: () {
      setState(() {
        //Clicar no botão + vai criar uma tarefa
        notas.tarefas.add(Tarefas());
      });
    },
  );
 }

//
 Widget _construirItemLista(Tarefas tarefas) {
  return ListTile(
    leading: Checkbox(
      value: tarefas.completa,
      onChanged: (selecionado) {
        setState(() {
          tarefas.completa = selecionado!;
        });
      }),
      title:  TextField(
        onChanged: (text) {
          setState(() {
            tarefas.descricao = text;
          });
        },
      ),
  );
 }
}
