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
        child: ListView(children: [
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
          const product_showcase(
            imgUrl: 'assets/images/products/1.png',
            title1: 'Unisex Outfit Shoe',
            title2: 'Blade Runner GR',
            title3: '\$32.00',
          ),
          const product_showcase(
            imgUrl: 'assets/images/products/2.png',
            title1: 'Men Outfit Shoe',
            title2: 'Sneaker Srap',
            title3: '\$28.00',
          ),
          const product_showcase(
            imgUrl: 'assets/images/products/3.png',
            title1: 'Men Outfit Shoe',
            title2: 'Brown Leaty Boot',
            title3: '\$27.60',
          ),
          const product_showcase(
            imgUrl: 'assets/images/products/4.png',
            title1: 'FemaleOutfit Shoe',
            title2: 'Star Master White',
            title3: '\$32.00',
          ),
          const product_showcase(
            imgUrl: 'assets/images/products/5.png',
            title1: 'Men Outfit Shoe',
            title2: 'Booty Leather 11',
            title3: '\$40.00',
          ),
          const product_showcase(
            imgUrl: 'assets/images/products/6.png',
            title1: 'Men Outfit Shoe',
            title2: 'Gucci XR Big',
            title3: '\$41.50',
          ),
        ]),
      ),
    );
  }
}

// ignore: camel_case_types
class product_showcase extends StatefulWidget {
  const product_showcase({
    required this.title1,
    required this.title2,
    required this.title3,
    required this.imgUrl,
    Key? key,
  }) : super(key: key);

  final String title1;
  final String title2;
  final String title3;
  final String imgUrl;

  @override
  State<product_showcase> createState() => _product_showcaseState();
}

// ignore: camel_case_types
class _product_showcaseState extends State<product_showcase> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(widget.imgUrl),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Align(
                alignment: Alignment.topRight, child: Icon(Icons.favorite)),
            const SizedBox(height: 190),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(widget.title1),
                    Text(widget.title2,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15)),
                    Text(widget.title3,
                        style:
                            const TextStyle(fontSize: 23, color: Colors.black)),
                  ],
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white24),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add_shopping_cart_rounded))
              ],
            )
          ],
        ));
  }
}
