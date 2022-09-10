import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: AppSlider(),
    ));

class AppSlider extends StatefulWidget {
  @override
  _AppSliderState createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  double _valorSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Layout Básico'),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            children: [
              Slider(
                  value: _valorSlider,
                  min: 0,
                  max: 10,
                  //Definido um label no slider
                  label: '${_valorSlider.toStringAsFixed(2)}',
                  divisions: 10,
                  activeColor: Colors.amber.shade200,
                  inactiveColor: Colors.grey,
                  onChanged: (double valorAlterado) {
                    setState(() {
                      _valorSlider = valorAlterado;
                    });
                  }),
              ElevatedButton(
                  onPressed: () {
                    print(
                      'Valor selecionado: ${_valorSlider.toStringAsFixed(2)}',
                    ); //Saída no terminal
                  },
                  child: Text('Capturar'))
            ],
          ),
        ),
      ),
    );
  }
}
