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
    return Scaffold(
      backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: const Text(
//             'New Arrival',
//             style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 1.5,
//                 color: Colors.black),
//           ),
//           centerTitle: true,
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.shopping_cart),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: const Icon(Icons.sort),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         // ignore: prefer_const_constructors
//         drawer: app_drawer(),
//         body: const main_content());
      // }
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Image.asset('asset/images/icons/app_icon/app_icon.png')),
          const SizedBox(height: 5),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.menu),
                Text(
                  'New Arrival',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.shopping_cart),
              ]),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          const SizedBox(height: 10),
          Container(
              height: 30,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/products/1.png'),
                fit: BoxFit.cover,
              )), 
              child: )
        ]),
      ),
    );
  }
}
