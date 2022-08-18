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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Image.asset(
                'assets/images/icons/app_icon/app_icon.png',
              ),
            ),
            const drawer_nav(name: 'Lagos', icon: Icons.location_on),
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
            const drawer_nav(
              icon: Icons.person,
              name: 'Profile',
            ),
            const drawer_nav(
              icon: Icons.settings,
              name: 'Settings',
            ),
            const drawer_nav(
              icon: Icons.notifications,
              name: 'Notifications',
            ),
            const drawer_nav(
              icon: Icons.help_center,
              name: 'Help',
            ),
            const SizedBox(height: 5),
            const Divider(
              color: Colors.black,
            ),
            const drawer_nav(
              icon: Icons.category,
              name: 'Catalog',
            ),
            const drawer_nav(
              icon: Icons.share_arrival_time,
              name: 'New Arrival',
            ),
            const drawer_nav(
              icon: Icons.shopping_cart,
              name: 'Hot Sales',
            ),
            const drawer_nav(
              icon: Icons.credit_card,
              name: 'Coupons',
            ),
            const SizedBox(height: 5),
            const Divider(
              color: Colors.black,
            ),
            const drawer_nav(
              icon: Icons.shopping_cart,
              name: 'Cart',
            ),
            const drawer_nav(
              icon: Icons.favorite,
              name: 'Saved Items',
            ),
            const drawer_nav(
              icon: Icons.track_changes,
              name: 'Track Orders',
            ),
            const SizedBox(height: 5),
            const Divider(
              color: Colors.black,
            ),
            const drawer_nav(
              icon: Icons.facebook,
              name: 'Like Us',
            ),
            const drawer_nav(
              icon: Icons.exit_to_app,
              name: 'Exit',
            ),
          ],
        ),
      ),
    );
  }
}
