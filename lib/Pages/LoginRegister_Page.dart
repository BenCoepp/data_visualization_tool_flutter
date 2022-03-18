// ignore_for_file: override_on_non_overriding_member, empty_statements, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, file_names, camel_case_types, prefer_const_literals_to_create_immutables, annotate_overrides

import 'package:data_visualization_tool/Pages/Overview_Page.dart';
import 'package:flutter/material.dart';
import '../data.dart' as data;

class LoginRegister_Page extends StatefulWidget {
  LoginRegisterPage_Widget createState() => LoginRegisterPage_Widget();
  static const routeName = '/overview';
}

class LoginRegisterPage_Widget extends State<LoginRegister_Page> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController usernameControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 350,
          height: 400,
          color: Colors.amber,
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: usernameControler,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 20, 31, 36),
                      labelText: "Username",
                    ),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: passwordControler,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 20, 31, 36),
                      labelText: "Username",
                    ),
                  ),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, Overview_Page.routeName);
                },
                icon: Icon(Icons.add, size: 18),
                label: Text("Login"),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: usernameControler,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 20, 31, 36),
                      labelText: "Username",
                    ),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: passwordControler,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 20, 31, 36),
                      labelText: "Username",
                    ),
                  ),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(Icons.add, size: 18),
                label: Text("Register"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
