import 'package:flutter/material.dart';

main() => runApp(
      MaterialApp(
        home: SwitchApp(),
      ),
    );

class SwitchApp extends StatefulWidget {
  @override
  State<SwitchApp> createState() => _SwitchAppState();
}

class _SwitchAppState extends State<SwitchApp> {
  //Declarações
  bool _selecaoEstado = false;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App com botão Switch'),
        backgroundColor: Colors.black,
    ),
    body:  Container(
      child:  Padding(
        padding: EdgeInsets.all(20),
        child: Row(children: [
          Text('News Lerrer'),

              //Botão Switch
              Switch(
                value: _selecaoEstado,
                  onChanged: (bool estado) {
                    setState(() {
                      _selecaoEstado  = estado;
                    },
                    );
                  },
              ),
              
          Text('Estado atual: $_selecaoEstado'),

            ],
      ),
        ),
        ),
        );
  }
}
