import 'dart:math';

import 'package:directmart/product/product.dart';
import 'package:flutter/material.dart';

class ProductSections extends StatefulWidget {
  const ProductSections({Key? key, required this.indexNumber})
      : super(key: key);

  final int indexNumber;
  @override
  State<ProductSections> createState() => _ProductSectionsState();
}

List<Map> SampleProductCategories = [
  {'name': 'Best Selling', 'products': SampleProductList},
  {'name': 'All products', 'products': SampleProductList},
  {'name': 'Vegitables', 'products': SampleProductList},
];

List<Map> SampleProductList = [
  {
    'name': 'Dragon Fruit',
    'image': 'assets/images/products/dragonfruit.png',
    'quntity': '100g',
    'price': '\$10',
    'stock': 'Out of Stock',
  },
  {
    'name': 'Coconuts',
    'image': 'assets/images/products/coconut.png',
    'quntity': '1',
    'price': '\$20',
    'stock': 'In Stock',
  },
  {
    'name': 'Broccoli',
    'image': 'assets/images/products/brocoli.png',
    'quntity': '1kg',
    'price': '\$50',
    'stock': 'In Stock',
  },
  {
    'name': 'Beef',
    'image': 'assets/images/products/beef.png',
    'quntity': '500g',
    'price': '\$250',
    'stock': 'In Stock',
  },
];

class _ProductSectionsState extends State<ProductSections> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              SampleProductCategories[widget.indexNumber]['name'],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              'See All',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 94, 196, 1)),
            ),
          ],
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 20);
            },
            scrollDirection: Axis.horizontal,
            itemCount: SampleProductList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Product(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: const Border.symmetric(),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 199, 199, 199)
                                      .withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                              color: Color.fromARGB(255, 255, 255, 255)),
                          width: 140,
                          height: 230,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)]
                                      .withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(5),
                                  border: const Border.symmetric(),
                                  boxShadow: const [],
                                ),
                                width: 168,
                                height: 120,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    SampleProductList[index]['image'],
                                    width: 100,
                                  ),
                                ),
                              ),
                              Container(
                                width: 130,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      SampleProductList[index]['name'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 82, 82, 82),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Quntity: ' +
                                        SampleProductList[index]['quntity'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 150, 150, 150)),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15, bottom: 5),
                                  child: Text(
                                    SampleProductList[index]['price'],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  child: Container(
                                    width: 100,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        border: const Border.symmetric(),
                                        boxShadow: const [],
                                        color: SampleProductList[index]
                                                    ['stock'] ==
                                                'In Stock'
                                            ? Color.fromARGB(255, 47, 182, 47)
                                                .withOpacity(0.5)
                                            : Color.fromARGB(255, 223, 46, 46)
                                                .withOpacity(0.5)),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        SampleProductList[index]['stock'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
