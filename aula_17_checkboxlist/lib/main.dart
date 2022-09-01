import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: MeuCheckbox(),
    ));

class MeuCheckbox extends StatefulWidget {
  @override
  State<MeuCheckbox> createState() => _MeuCheckboxState();
}

class _MeuCheckboxState extends State<MeuCheckbox> {
  bool _pizzaMarguerita = false;
  bool _pizzaCalabreza = false;

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
          //Para esticar o conteúdo
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CheckboxListTile(
                title: Text('Pizza Marguerita'),
                subtitle: Text('tomate, cebola, manjericão, queijo'),
                //Cor do checkbox
                activeColor: Colors.black,
                //cor do texto
                selected: true,
                //definindo um icone
                secondary: Icon(Icons.add_box),
                value: _pizzaMarguerita,
                onChanged: (bool? valor) {
                  setState(() {
                    _pizzaMarguerita = valor!;
                  });
                }),
            CheckboxListTile(
                title: Text('Pizza Calabreza'),
                subtitle: Text('Calabreza, cebola, queijo'),
                //Cor do checkbox
                activeColor: Colors.black,
                //cor do texto
                selected: true,
                //definindo um ícone
                secondary: Icon(Icons.add_box),
                value: _pizzaCalabreza,
                onChanged: (bool? valor) {
                  setState(() {
                    _pizzaCalabreza = valor!;
                  });
                }),
            ElevatedButton(onPressed: () {
              print('Pedido:');
              print('Pizza Marguerita: $_pizzaMarguerita');
              print('PizzaCalabreza: $_pizzaCalabreza');
            },
            child: Text('Fazer o pedido'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Feed',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'chat',
                )
        ]),
    );
  }
}
