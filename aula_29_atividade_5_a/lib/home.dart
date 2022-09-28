import 'package:flutter/material.dart';
import 'oly_arch.dart';
import 'oly_ati.dart';
import 'oly_bx.dart';
import 'oly_es.dart';

class OlimpiadasApp extends StatefulWidget {
  const OlimpiadasApp({super.key});

  @override
  State<OlimpiadasApp> createState() => _OlimpiadasAppState();
}

class _OlimpiadasAppState extends State<OlimpiadasApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paris 2024'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/olympics.png'),
              const SizedBox(
                height: 50,
              ),

//Row 1
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //Icone Tiro com arco
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Oly_arch(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'images/oly_arch.png',
                    ),
                  ),

                  //Padding dos icones Row 1
                  Padding(padding: EdgeInsets.all(40)),

                  //Icone Tiro
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Oly_ati(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'images/oly_ati.png',
                    ),
                  ),


                ],
              ),
              
              //Espaçamento das Rows
              const SizedBox(
                height: 40,
              ),

//Row 2
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                //Icone Boxe
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Oly_bx(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'images/oly_bx.png',
                    ),
                  ),

                //Padding dos icones Row 2
                Padding(padding: EdgeInsets.all(40)),
                
                //Icone Esgrima
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Oly_es(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'images/oly_es.png',
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
