// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, equal_keys_in_map

import 'package:data_visualization_tool/Pages/Detail_Page.dart';
import 'package:data_visualization_tool/Pages/LoginRegister_Page.dart';
import 'package:data_visualization_tool/Pages/Overview_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        LoginRegister_Page.routeName: (context) => LoginRegister_Page(),
        Overview_Page.routeName: (context) => Overview_Page(),
        Detail_Page.routeName: (context) => Detail_Page(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [LoginRegister_Page()],
        ),
      ),
    );
  }
}
