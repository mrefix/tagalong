import 'dart:ffi';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tagalong'),
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
  bool _menuCollapse = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () => print("open menu")),
        actions: [
          IconButton(onPressed: () => print("human"), icon: const Icon(Icons.person_outline))
        ],
      ),
      body: Column(
        children: [
          Text('Upcoming events'),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('pressed'),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
