import 'dart:math';

import 'package:flutter/material.dart';

class MainCategory extends StatefulWidget {
  const MainCategory({Key? key}) : super(key: key);

  @override
  State<MainCategory> createState() => _MainCategoryState();
}

List<Map> SampleCategoryList = [
  {
    'name': 'Vegetables',
    'image': 'assets/images/categories/vegetable.png',
  },
  {
    'name': 'Fruits',
    'image': 'assets/images/categories/fruits.png',
  },
  {
    'name': 'Fish',
    'image': 'assets/images/categories/fish.png',
  },
  {
    'name': 'Meat',
    'image': 'assets/images/categories/vegetable.png',
  },
  {
    'name': 'Milk',
    'image': 'assets/images/categories/milk.png',
  },
  {
    'name': 'Cheese',
    'image': 'assets/images/categories/cheese.png',
  },
  {
    'name': 'Rice',
    'image': 'assets/images/categories/rice.png',
  },
  {
    'name': 'Meat',
    'image': 'assets/images/categories/beef.png',
  },
  {
    'name': 'Bread',
    'image': 'assets/images/categories/bread.png',
  },
];

class _MainCategoryState extends State<MainCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Text(
                    "Category",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0,
                    childAspectRatio: 1,
                  ),
                  // number of items in your list
                  itemCount: SampleCategoryList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
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
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              width: 170,
                              height: 170,
                              child: Column(
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
                                    width: 170,
                                    height: 120,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        SampleCategoryList[index]['image'],
                                        width: 60,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(),
                                        child: Text(
                                          SampleCategoryList[index]['name'],
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
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
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
