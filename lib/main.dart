import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///// icon instead of logo ///////
            const Icon(
              Icons.send,
              size: 60,
            ),

            ////////bankApp text /////////
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: 'Bank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'App'),
                ],
              ),
            ),

            /////////log in///////////////
            const SizedBox(
              height: 150,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              //width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //////////Register//////////
            const SizedBox(
              height: 40,
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 15.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ], borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'Register',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
