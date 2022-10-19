import 'package:flutter/material.dart';

main() => runApp(
    const MaterialApp(
      home: WidgetApp(),
      debugShowCheckedModeBanner: false,
    ),
  );

class WidgetApp extends StatefulWidget {
  const WidgetApp({super.key});

  @override
  State<WidgetApp> createState() => _WidgetAppState();
}

class _WidgetAppState extends State<WidgetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extraindo Widgets'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Text(
              'Widget de texto',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: Colors.black,
              ),
            ),

            //Forçar o epaçamento
            const SizedBox(
              height: 20,
            ),

            //Botão outline
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                //Cor de foreground
                foregroundColor: const Color(0xFFFCFAFA),
                //Cor da borda
                side: const BorderSide(
                  width: 1,
                  color: Colors.orange,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Meu Botão',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.amber
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

