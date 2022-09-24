// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

List<Map> sampleCart = [
  {
    'name': 'Dragon Fruit fsdfse f f sef sef',
    'image': 'assets/images/products/dragonfruit.png',
  },
  {
    'name': 'Dragon Fruit fse fse f sef sef ',
    'image': 'assets/images/products/brocoli.png',
  },
];

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.favorite_border,
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
          child: sampleCart.isEmpty ? EmptyCart() : CartNotEmpty(),
        ),
      ),
    );
  }
}

class EmptyCart extends StatefulWidget {
  const EmptyCart({super.key});

  @override
  State<EmptyCart> createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
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
          'Your cart is empty',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Looks like you haven\'t added anything to your cart yet ',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}

class CartNotEmpty extends StatefulWidget {
  const CartNotEmpty({super.key});

  @override
  State<CartNotEmpty> createState() => _CartNotEmptyState();
}

class _CartNotEmptyState extends State<CartNotEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: sampleCart.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ProductList(index);
        },
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              const SizedBox(width: 10),
              Container(
                width: 70,
                child: Text('Total Price: USD 7.99 ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 80, 80, 80),
                    )),
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 45),
                    backgroundColor: const Color.fromARGB(255, 94, 196, 1)),
                onPressed: () {},
                child: const Text('CheckOut'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ProductList(index) => Padding(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Card(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Image.asset(
                            sampleCart[index]['image'],
                            width: 70,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Color.fromARGB(255, 179, 178, 178),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 110,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sampleCart[index]['name'],
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'USD 2.99',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Quantity: 1',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 233, 233, 233),
                        ),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: new Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                              onPressed: () => setState(
                                () => {},
                              ),
                            ),
                            const SizedBox(width: 10),
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '1',
                                  style: TextStyle(fontSize: 18),
                                )),
                            const SizedBox(width: 10),
                            IconButton(
                              icon: new Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              onPressed: () => setState(() => {}),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
