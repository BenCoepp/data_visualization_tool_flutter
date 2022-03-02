// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Project {
  late String name;
  late int id;

  Project({
    required this.id,
    required this.name,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      name: json['name'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'id': id,
      };
}
