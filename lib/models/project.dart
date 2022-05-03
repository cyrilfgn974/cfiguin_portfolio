import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:cfiguin_portfolio/utils/constants.dart';

//Define the class of a project
class Project {
  final String name;
  final String descrp;
  final String lang;

  const Project({required this.name, required this.descrp, required this.lang});

  // method to parse json with the data of a project
  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
        name: json['Name'] as String,
        descrp: json['Description'] as String,
        lang: json['lang'] as String);
  }
}

// Function Async that get json from data api and applies parseProject. Gives the result when ready.
Future<List<Project>> fetchProjects(http.Client client) async {
  final response = await http.get(
      Uri.parse(
          "http://api.gnmc3466.odns.fr/api/cfiguin_portfolio/getAllProjects"),
      headers: {"Access-Control-Allow-Origin": "*"});

  // Use the compute function to run parseProjects in a separate isolate.
  return compute(parseProjects, response.body);
}

//Function thats convert response.body into  List<Project>
List<Project> parseProjects(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Project>((json) => Project.fromJson(json)).toList();
}
