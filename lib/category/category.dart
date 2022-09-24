import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
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
  {
    'name': 'Bread',
    'image': 'assets/images/categories/bread.png',
  },
];

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
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
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: SampleCategoryList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                SampleCategoryList[index]['image'],
                                width: 40,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    SampleCategoryList[index]['name'],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 82, 82, 82),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Home made products for every person in sri lanka',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 82, 82, 82),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Divider(
                            color: Color.fromARGB(255, 82, 82, 82)
                                .withOpacity(0.5),
                            indent: 0,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
