import 'package:cached_network_image/cached_network_image.dart';
import 'package:directmart/home/homebanner.dart';
import 'package:directmart/home/maincategories.dart';
import 'package:directmart/home/normalbanner.dart';
import 'package:directmart/home/productsections.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18, right: 0),
                child: CachedNetworkImage(
                  height: 38,
                  width: 38,
                  imageUrl:
                      "https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ],
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dinusha Hasaranga',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            Text(
              '122 Main Street, Colombo, Sri Lanka',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications_active_rounded,
              color: Color.fromARGB(255, 80, 80, 80),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20), child: HomeBanner()),
                Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: MainCategories()),
                Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: ProductSections(
                      indexNumber: 0,
                    )),
                NormalBanner(),
                Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: ProductSections(
                      indexNumber: 1,
                    )),
                Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: ProductSections(
                      indexNumber: 2,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
