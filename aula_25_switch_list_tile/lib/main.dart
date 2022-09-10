import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: AppSwitchList(),
    ));

class AppSwitchList extends StatefulWidget {
  @override
  _AppSwitchListState createState() => _AppSwitchListState();
}

class _AppSwitchListState extends State<AppSwitchList> {
  bool _modoCor = false;
  bool _modoSepia = false;
  bool _modoRed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Switch List'),
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //Criar o switch
              SwitchListTile(
                  title: Text(
                    'Modo Colorido',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  subtitle: Text('Utilizando cores visualização'),
                  activeColor: Colors.blueGrey,
                  secondary: Icon(Icons.monitor),
                  value: _modoCor,
                  onChanged: (bool estado1) {
                    setState(() {
                      _modoCor = estado1;
                    });
                  }),
              SwitchListTile(
                  title: Text(
                    'Modo Colorido',
                    style: TextStyle(color: Colors.orange.shade100),
                  ),
                  subtitle: Text('Utilizando cores visualização'),
                  activeColor: Colors.orange.shade100,
                  secondary: Icon(Icons.monitor),
                  value: _modoSepia,
                  onChanged: (bool estado2) {
                    setState(() {
                      _modoSepia = estado2;
                    });
                  }),

              SwitchListTile(
                  title: Text(
                    'Modo Colorido',
                    style: TextStyle(color: Colors.red.shade600),
                  ),
                  subtitle: Text('Utilizando cores visualização'),
                  activeColor: Colors.red.shade600,
                  secondary: Icon(Icons.monitor),
                  value: _modoRed,
                  onChanged: (bool estado3) {
                    setState(() {
                      _modoRed = estado3;
                    });
                  }),
              ElevatedButton(
                  onPressed: () {
                    print('Modo Cor: $_modoCor');
                    print('Modo Sepia: $_modoSepia');
                    print('Modo Red: $_modoRed');
                  },
                  child: Text('Configurar'))
            ],
          ),
        ),
      ),
    );
  }
}
