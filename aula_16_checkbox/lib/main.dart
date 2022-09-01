import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: MeuCheckbox(),
    ));

class MeuCheckbox extends StatefulWidget {
  @override
  _MeuCheckboxState createState() => _MeuCheckboxState();
}

class _MeuCheckboxState extends State<MeuCheckbox> {
  bool _selecaoCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App com caixa de seleção'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Faça sua escolha'),
            Checkbox(
                //valor inicial do checkbox
                value: _selecaoCheckbox, //desmarcado
                onChanged: (bool? valor) {
                  setState(() {
                    _selecaoCheckbox = valor!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
