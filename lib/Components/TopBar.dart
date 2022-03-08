// ignore_for_file: override_on_non_overriding_member, empty_statements, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, file_names, camel_case_types, prefer_const_literals_to_create_immutables, annotate_overrides

import 'package:flutter/material.dart';
import '../data.dart' as data;

class TopBar extends StatefulWidget {
  TopBar_Widget createState() => TopBar_Widget();
  static const routeName = '/overview';
}

class TopBar_Widget extends State<TopBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [],
    ));
  }
}
