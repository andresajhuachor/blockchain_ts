// ignore_for_file: prefer_const_constructors
import 'package:blockchain_app/views/ViewMap.dart';
import 'package:blockchain_app/views/ViewSelectCountry.dart';
import 'package:blockchain_app/views/ViewWelcome.dart';
import 'package:flutter/material.dart';
import 'package:blockchain_app/views/ViewRegisterPhone.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My app', // used by the OS task switcher
      initialRoute: '/phone-register',
      routes: {
        '/phone-register': (context) => PhoneRegister(),
        '/select-country': (context) => SelectCountry(),
        '/map-country': (context) => MapCountry(),
        '/welcome': (context) => Welcome()
      },
    ),
  );
}



