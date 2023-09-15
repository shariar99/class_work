import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text("Hello world"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: buildColumn(),
          ),
          Expanded(
            child: buildColumn(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {},
        child: const Text('Click'),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: <Widget>[
        for (var i = 0; i < 5; i++)
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Hello world",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontFamily: 'dance',
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
