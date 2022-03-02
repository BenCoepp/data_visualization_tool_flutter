// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class User {
  late String name;
  late String userName;
  late String password;
  late String token;

  User({
    required this.name,
    required this.userName,
    required this.password,
    required this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      userName: json['userName'],
      password: json['password'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'userName': userName,
        'password': password,
        'token': token,
      };
}
