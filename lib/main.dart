import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstApp(),
        '/second': (context) => SecondApp(),
        '/third': (context) => ThirdApp(),
      },
    ),
  );
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click Me'),
          color: Colors.blue,
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Third Click'),
              color: Colors.yellow,
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              child: Text('Back Click'),
              color: Colors.green,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
