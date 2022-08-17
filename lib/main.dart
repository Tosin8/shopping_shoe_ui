import 'package:flutter/material.dart';

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
    return Container();
  }
}
