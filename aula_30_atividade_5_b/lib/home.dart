import 'package:flutter/material.dart';
import 'mickey.dart';

class DisneyApp extends StatefulWidget {
  const DisneyApp({super.key});

  @override
  State<DisneyApp> createState() => _DisneyAppState();
}

class _DisneyAppState extends State<DisneyApp> {
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
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mickey(),
                          ),
                        );
                      },
                      child: Text('Personagens'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
