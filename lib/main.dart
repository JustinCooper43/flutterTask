import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late Color color;
  late String font;
  late List<String> listFon = ["Flower", "Lobster", "Elite"];
  String text = "Hey there !";

  @override
  void initState() {
    super.initState();
    color = Colors.transparent;
    font = "";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [color, Colors.black])),
          child: FlatButton(
            // color: color,
            onPressed: () {
              setState(() {
                int a = Random().nextInt(256);
                int r = Random().nextInt(256);
                int g = Random().nextInt(256);
                int b = Random().nextInt(256);
                color = Color.fromARGB(a, r, g, b);

                int indexFont = Random().nextInt(listFon.length);
                font = listFon[indexFont];
              });
            },
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 32,
                  fontFamily:font,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
