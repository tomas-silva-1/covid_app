import 'package:covid_app/pages/home.dart';
import 'package:covid_app/pages/symptoms.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/symptoms': (context) => Symptoms(),
    },
  ));
}


