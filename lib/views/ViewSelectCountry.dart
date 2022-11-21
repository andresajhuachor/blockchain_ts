// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class SelectCountry extends StatelessWidget {
  const SelectCountry({super.key});
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Text('Select country'),
      ),
      body: Center(
        child: ElevatedButton(
          style: style,
          child: const Text('go to welcome'),
          onPressed: () {
            Navigator.pushNamed(context, '/welcome');
          },
        ),
      ),
    );
  }
}