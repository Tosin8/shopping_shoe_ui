import 'package:flutter/material.dart';

import 'widgets/constants/app_drawer.dart';
import 'widgets/constants/main_content.dart';

void main() {
  runApp(const MaterialApp(
    home: Arrival(),
    debugShowCheckedModeBanner: false,
  ));
}

class Arrival extends StatefulWidget {
  const Arrival({super.key});

  @override
  State<Arrival> createState() => _ArrivalState();
}

class _ArrivalState extends State<Arrival> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'New Arrival',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.sort),
              onPressed: () {},
            ),
          ],
        ),
        // ignore: prefer_const_constructors
        drawer: app_drawer(),
        body: const main_content());
  }
}
