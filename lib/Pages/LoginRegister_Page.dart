// ignore_for_file: override_on_non_overriding_member, empty_statements, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, file_names, camel_case_types, prefer_const_literals_to_create_immutables, annotate_overrides

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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 350,
          height: 400,
          color: Colors.amber,
        ),
      ),
    );
  }
}
