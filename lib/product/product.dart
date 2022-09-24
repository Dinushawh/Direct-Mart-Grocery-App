// ignore_for_file: deprecated_member_use, unused_field
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

List<Map> SampleProductList = [
  {
    'Title': 'weight',
    'Note': '500g /unit',
  },
  {
    'Title': 'Location',
    'Note': 'Bandarawela',
  },
  {
    'Title': 'Manufacture Date',
    'Note': 'Date Order',
  },
  {
    'Title': 'Expire Date',
    'Note': 'use within one week',
  },
  {
    'Title': 'weight',
    'Note': '500g /unit',
  },
  {
    'Title': 'Location',
    'Note': 'Bandarawela',
  },
  {
    'Title': 'Manufacture Date',
    'Note': 'Date Order',
  },
  {
    'Title': 'Expire Date',
    'Note': 'use within one week',
  },
  {
    'Title': 'weight',
    'Note': '500g /unit',
  },
  {
    'Title': 'Location',
    'Note': 'Bandarawela',
  },
  {
    'Title': 'Manufacture Date',
    'Note': 'Date Order',
  },
  {
    'Title': 'Expire Date',
    'Note': 'use within one week',
  },
  {
    'Title': 'weight',
    'Note': '500g /unit',
  },
  {
    'Title': 'Location',
    'Note': 'Bandarawela',
  },
  {
    'Title': 'Manufacture Date',
    'Note': 'Date Order',
  },
  {
    'Title': 'Expire Date',
    'Note': 'use within one week',
  },
];

class _ProductState extends State<Product> {
  int _itemCount = 0;
  double _price = 6.99;
  double _totalPrice = 0;
  String tot = '0.00';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Color.fromARGB(255, 80, 80, 80),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Center(
                  child: Image.asset(
                    'assets/images/products/brocoli.png',
                    width: 200,
                  ),
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   height: MediaQuery.of(context).size.height * 0.04,
              //   color: Colors.green,
              //   child: Text(
              //     'In Stock',
              //     style: TextStyle(
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Broccoli',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 80, 80, 80),
                              ),
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            icon: const Icon(
                              Icons.favorite_border_rounded,
                              size: 20,
                              color: Color.fromARGB(255, 80, 80, 80),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),

                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Text(
                                'USD 6.99 ',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                '(500g)',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )),
                      Row(
                        children: [
                          Text(
                            'USD 7.99',
                            style: TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough,
                              color: Color.fromARGB(255, 80, 80, 80),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '-61%',
                            style: TextStyle(
                              fontSize: 14,
                              // decoration: TextDecoration.lineThrough,
                              color: Color.fromARGB(255, 80, 80, 80),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      // Align(
                      //   alignment: Alignment.topLeft,
                      //   child: Text(
                      //     'In stock',
                      //     style: TextStyle(
                      //       fontSize: 18,
                      //       fontWeight: FontWeight.bold,
                      //       // decoration: TextDecoration.lineThrough,
                      //       color: Colors.green,
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 15),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 80, 80, 80),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Brocoli is a vegetable that is native to the Americas and is a member of the nightshade family. It is a bulbous, succulent plant with a greenish-purple color.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 80, 80, 80),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              openSpecification();
                            },
                            child: Text(
                              'Product Specifications',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 80, 80, 80),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Color.fromARGB(255, 80, 80, 80),
                            ),
                            onPressed: () {
                              openSpecification();
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Select Size',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 80, 80, 80),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red,
                              // border: Border.all(
                              //   color: Colors.green,
                              //   width: 2.0,
                              // ),
                            ),
                            child: IconButton(
                              icon: new Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: () => setState(
                                () => {
                                  if (_itemCount != 0)
                                    {
                                      _itemCount--,
                                      _totalPrice =
                                          _itemCount.toDouble() * _price,
                                      tot = _totalPrice.toStringAsFixed(2),
                                    }
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.green,
                                width: 1.0,
                              ),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '$_itemCount',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: IconButton(
                              icon: new Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () => setState(() => {
                                    _itemCount++,
                                    _totalPrice =
                                        _itemCount.toDouble() * _price,
                                    tot = _totalPrice.toStringAsFixed(2),
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
                child: Text('Total Price: USD $tot ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 80, 80, 80),
                    )),
              ),
              Spacer(),
              Row(
                children: [
                  Container(
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 45),
                          backgroundColor:
                              const Color.fromARGB(255, 94, 196, 1)),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => LoginOTP(),
                        //   ),
                        // );
                      },
                      child: const Text('Add to cart'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 45),
                          backgroundColor: Colors.red),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => LoginOTP(),
                        //   ),
                        // );
                      },
                      child: const Text('Buy now'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openSpecification() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: MediaQuery.of(context).size.height,
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 0),
                    child: Row(
                      children: [
                        Text(
                          "Product Details",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        IconButton(
                            icon: new Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: SampleProductList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    SampleProductList[index]['Title'],
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    SampleProductList[index]['Note'],
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Divider(
                                  color: Colors.grey,
                                  indent: 0,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
