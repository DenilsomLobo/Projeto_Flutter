import 'dart:math';
import 'package:flutter/material.dart';

class MegaSena extends StatefulWidget {
  @override
  _MegaSenaState createState() => _MegaSenaState();
}

class _MegaSenaState extends State<MegaSena> {
  List<int> resultado = [];

  sortearNumero() {
    resultado.clear();
    while (resultado.length < 6) {
      setState(() {
        int sortearNumero = 1 + Random().nextInt(60);
        if (!resultado.contains(sortearNumero)) {
          resultado.add(sortearNumero);
          resultado.sort();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Mega Sena'),
        backgroundColor: Color.fromARGB(255, 32, 87, 30),
      ),
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.green,
          width: 20,
        )),

        //Colocando um recurso de Scroll
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 100, left: 12, right: 12),
                      child: Image.asset(
                        'images/mega_sena_2.png',
                        scale: 2,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 120),
                      child: Text(
                        resultado.toString(),
                        style: TextStyle(color: Colors.amber, fontSize: 26),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 190, bottom: 100),
                      child: ElevatedButton(
                        onPressed: sortearNumero,
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        child: const Text('Sortear'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
