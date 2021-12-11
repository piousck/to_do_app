import 'package:flutter/material.dart';
import 'package:to_do_app/services/theme_services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: Column(
        children: [
          Text(
            "Theme data",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }

  AppBar _myAppBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          ThemeService().swithTheme();
          print("Tapped");
        },
        child: Icon(Icons.nightlight_round_outlined),
      ),
      actions: [
        Icon(Icons.person_sharp),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
