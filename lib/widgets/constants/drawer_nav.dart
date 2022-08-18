import 'package:flutter/material.dart';

class drawer_nav extends StatelessWidget {
  const drawer_nav({
    required this.name,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final String name;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ignore: avoid_print
        print('onTap');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(icon, color: Colors.black)),
          Padding(
            padding: const EdgeInsets.only(right: 160.0),
            child: Text(name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }
}
