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
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Máximo',
              ),
              keyboardType: TextInputType.numberWithOptions(
                decimal: false,
                signed: true,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Máximo',
              ),
              keyboardType: TextInputType.numberWithOptions(
                decimal: false,
                signed: true,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Máximo',
              ),
              keyboardType: TextInputType.numberWithOptions(
                decimal: false,
                signed: true,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
