import 'package:flutter/material.dart';

import 'drawer_nav.dart';

// ignore: camel_case_types
class app_drawer extends StatelessWidget {
  const app_drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
              child: Image.asset(
                'assets/images/icons/app_icon/app_icon.png',
              ),
            ),
            const Text('Last Checked',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )),
            const Text('Thur, 12 July 2022',
                style: TextStyle(color: Colors.black, fontSize: 8)),
            const SizedBox(height: 8),
            const drawer_nav(
              icon: Icons.home,
              name: 'Home',
            ),
          ],
        ),
      ),
    );
  }
}
