import 'package:flutter/material.dart';

class Mickey extends StatelessWidget {
  const Mickey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disney App'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/logo.png'),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/mickey.png'),

                  Padding(padding: EdgeInsets.all(40)),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mickey(),
                          ),
                        );
                      },
                      child: Text('Próximo'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
