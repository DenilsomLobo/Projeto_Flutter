import 'package:flutter/material.dart';

class Oly_ati extends StatelessWidget {
  const Oly_ati({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiro'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/olympics.png'),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      'images/oly_arch.png',
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(40)),
                  Image.asset(
                    'images/oly_ati.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/oly_bx.png'),
                  Padding(padding: EdgeInsets.all(40)),
                  Image.asset('images/oly_es.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
