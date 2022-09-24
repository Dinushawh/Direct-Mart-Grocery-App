import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

List<Map> sampleFavourite = [
  // {
  //   'name': 'Vegetables',
  //   'image': 'assets/images/categories/vegetable.png',
  // },
  // {
  //   'name': 'Fruits',
  //   'image': 'assets/images/categories/fruits.png',
  // },
  // {
  //   'name': 'Fish',
  //   'image': 'assets/images/categories/fish.png',
  // },
  // {
  //   'name': 'Meat',
  //   'image': 'assets/images/categories/vegetable.png',
  // },
  // {
  //   'name': 'Milk',
  //   'image': 'assets/images/categories/milk.png',
  // },
  // {
  //   'name': 'Cheese',
  //   'image': 'assets/images/categories/cheese.png',
  // },
  // {
  //   'name': 'Rice',
  //   'image': 'assets/images/categories/rice.png',
  // },
  // {
  //   'name': 'Meat',
  //   'image': 'assets/images/categories/beef.png',
  // },
  // {
  //   'name': 'Bread',
  //   'image': 'assets/images/categories/bread.png',
  // },
  // {
  //   'name': 'Bread',
  //   'image': 'assets/images/categories/bread.png',
  // },
];

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Your favourite products',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              size: 20,
              color: Color.fromARGB(255, 80, 80, 80),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              size: 20,
              color: Color.fromARGB(255, 80, 80, 80),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child:
              sampleFavourite.isEmpty ? EmptyFavourite() : FavouriteNotEmpty(),
        ),
      ),
    );
  }
}

class EmptyFavourite extends StatefulWidget {
  const EmptyFavourite({super.key});

  @override
  State<EmptyFavourite> createState() => _EmptyFavouriteState();
}

class _EmptyFavouriteState extends State<EmptyFavourite> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250,
          height: 250,
          child: Lottie.asset(
            'assets/images/cart/51382-astronaut-light-theme.json',
          ),
        ),
        Text(
          'No favourite\s yet',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Once you add some favourite\s, they will appear here',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}

class FavouriteNotEmpty extends StatefulWidget {
  const FavouriteNotEmpty({super.key});

  @override
  State<FavouriteNotEmpty> createState() => _FavouriteNotEmptyState();
}

class _FavouriteNotEmptyState extends State<FavouriteNotEmpty> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Not EMpty"),
    );
  }
}
