import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);
// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  String ipString;
  String ipType;

  Welcome({
    required this.ipString,
    required this.ipType,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        ipString: json["ipString"],
        ipType: json["ipType"],
      );

  Map<String, dynamic> toJson() => {
        "ipString": ipString,
        "ipType": ipType,
      };
}
