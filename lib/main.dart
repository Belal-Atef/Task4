// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  int _counter1 = 0;
  int _counter2 = 0;

  void incCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void incCounter12() {
    setState(() {
      _counter1 += 2;
    });
  }

  void incCounter13() {
    setState(() {
      _counter1 += 3;
    });
  }

  void incCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void incCounter21() {
    setState(() {
      _counter2 += 2;
    });
  }

  void incCounter23() {
    setState(() {
      _counter2 += 3;
    });
  }

  void _Counter00() {
    setState(() {
      _counter1 = 0;
      _counter2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basketball Score Counter'),
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'TEAM A',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  '$_counter1',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: incCounter1,
                      child: Text(
                        '+1 POINT',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 68, 68))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: incCounter12,
                      child: Text(
                        '+2 POINT',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 68, 68))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: incCounter13,
                      child: Text(
                        '+3 POINT',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 68, 68))),
                )
              ],
            ),
            VerticalDivider(
              color: Color.fromARGB(255, 3, 0, 0),
              thickness: 5,
              indent: 200,
              endIndent: 55,
              
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'TEAM B',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Text(
                  '$_counter2',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: incCounter2,
                      child: Text(
                        '+1 POINT',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 68, 68))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: incCounter21,
                      child: Text(
                        '+2 POINT',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 68, 68))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: incCounter23,
                      child: Text(
                        '+3 POINT',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 68, 68))),
                )
              ],
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OutlinedButton(
              onPressed: _Counter00,
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}