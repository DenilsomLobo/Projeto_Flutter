import 'package:flutter/material.dart';

main() => runApp(
      const MaterialApp(
        home: Refatorando(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Refatorando extends StatefulWidget {
  const Refatorando({super.key});

  @override
  State<Refatorando> createState() => _RefatorandoState();
}

class _RefatorandoState extends State<Refatorando> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refatorando'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            CampoDeTexto(
              labelText: 'inserir valor',
            ),
            SizedBox(height: 20),
            CampoDeTexto(
              labelText: 'Inserir valor',
            ),
          ],
        ),
      ),
    );
  }
}

class CampoDeTexto extends StatelessWidget {
  const CampoDeTexto({
    Key? key,

    //Valor de label text será requerido
    required this.labelText,
  }) : super(key: key);

  //Attributo para receber uma string
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),

        // Inserindo o atributo para resolver o hard code
        labelText: labelText,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
    );
  }
}
