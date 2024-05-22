import 'package:flutter/material.dart';

class Listed extends StatelessWidget {
  const Listed({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Basic List";

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(title),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 150,
                  color: Colors.red,
                ),
                Container(
                  width: 150,
                  color: Colors.blue,
                ),
                Container(
                  width: 150,
                  color: Colors.green,
                ),
                Container(
                  width: 150,
                  color: Colors.yellow,
                ),
              ],
            ),
          )),
    );
  }
}
