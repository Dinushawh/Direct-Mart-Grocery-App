import 'dart:async';

import 'package:flutter/material.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

List<Map> SampleBannerList = [
  {
    'image': 'assets/images/banner/banner1.png',
  },
  {
    'image': 'assets/images/banner/banner2.png',
  },
  {
    'image': 'assets/images/banner/banner3.png',
  },
];

class _HomeBannerState extends State<HomeBanner> {
  late final PageController pageController;
  int PageNumber = 0;

  late final Timer RunBanner;
  Timer getTimer() {
    return Timer.periodic(
      Duration(seconds: 3),
      (Timer timer) {
        if (PageNumber == SampleBannerList.length) {
          PageNumber = 0;
        } else {
          if (pageController.hasClients) {
            pageController.animateToPage(
              PageNumber + 1,
              duration: Duration(seconds: 3),
              curve: Curves.easeInOutCirc,
            );
          } else {
            timer.cancel();
          }
        }
      },
    );
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.90);
    RunBanner = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                PageNumber = index;
              },
              itemCount: SampleBannerList.length,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (context, child) {
                    return child!;
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            SampleBannerList[index]['image'],
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
