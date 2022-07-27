import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DedeApp());
}

class DedeApp extends StatefulWidget {
  const DedeApp({Key? key}) : super(key: key);//*

  @override
  State<DedeApp> createState() => _DedeAppState();
}

class _DedeAppState extends State<DedeApp> {
  int des1 = Random().nextInt(6) + 1;
  int des2 = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Dédé"),
          centerTitle: true,
        ),
        body: Center(
            child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        des1 = Random().nextInt(6) + 1;
                        des2 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset("images/dice$des1.png")),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("images/dice$des2.png"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
