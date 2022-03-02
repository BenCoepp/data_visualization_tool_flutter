import 'package:flutter/material.dart';

class Session {
  late String name;
  late int id;
  late int projectId;
  late String data;

  Session({
    required this.id,
    required this.name,
    required this.projectId,
    required this.data,
  });

  factory Session.fromJson(Map<String, dynamic> json) {
    return Session(
      name: json['name'],
      id: json['id'],
      projectId: json['projectId'],
      data: json['data'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'id': id,
        'projectId': projectId,
        'data': data,
      };
}
