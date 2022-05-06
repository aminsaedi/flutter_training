import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void pressButton() {
    setState(() {
      questionIndex++;
    });
    print('Using function');
  }

  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var options = ['amin', 'mamad', 'reza'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Test Title'),
        ),
        body: Column(children: [
          Text(options[questionIndex]),
          ElevatedButton(
            child: Text(options[2]),
            onPressed: () => print('One Pressed'),
          ),
          ElevatedButton(
            child: Text(options.elementAt(1)),
            onPressed: pressButton,
          ),
          ElevatedButton(
            child: Text(options.elementAt(0)),
            onPressed: () {
              print('Mode three');
            },
          )
        ]),
      ),
    );
  }
}
