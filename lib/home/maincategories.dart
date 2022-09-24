import 'dart:math';

import 'package:flutter/material.dart';

class MainCategories extends StatefulWidget {
  const MainCategories({Key? key}) : super(key: key);

  @override
  State<MainCategories> createState() => _MainCategoriesState();
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

class _MainCategoriesState extends State<MainCategories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Categories',
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
          height: 140,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 30);
            },
            scrollDirection: Axis.horizontal,
            itemCount: SampleCategoryList.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)]
                            .withOpacity(0.2),
                        borderRadius: BorderRadius.circular(100),
                        border: const Border.symmetric(),
                        boxShadow: const [],
                      ),
                      width: 70,
                      height: 70,
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          SampleCategoryList[index]['image'],
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          SampleCategoryList[index]['name'],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        )),
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
