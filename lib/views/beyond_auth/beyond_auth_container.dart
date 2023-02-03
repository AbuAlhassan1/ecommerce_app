import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uotc/views/beyond_auth/home.dart';

class BeyondAuthContainer extends StatefulWidget {
  const BeyondAuthContainer({super.key});

  @override
  State<BeyondAuthContainer> createState() => _BeyondAuthContainerState();
}

class _BeyondAuthContainerState extends State<BeyondAuthContainer> {
  final PageController homePagesController = PageController();

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return Scaffold(
      backgroundColor: const Color(0xFFf2f2f2),
      
      body: Stack(
        children: [
          PageView(
            controller: homePagesController,
            children: const [
              Home(),
              Home(),
              Home(),
              Home(),
            ],
            onPageChanged: (index) => setState(() => pageIndex = index),
          ),

          // Bottom Navigation Bar -- S t a r t --
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                log("asdasdasd");
              },
              child: Container(
                height: 70.h, width: width,
                padding: EdgeInsets.symmetric(horizontal: (width / 4) / 2),
                decoration: BoxDecoration(
                  color: const Color(0xFFe1e1e1),
                  border: Border(
                    top: BorderSide(
                      color: Colors.black.withOpacity(0.2),
                      width: 1
                    )
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => homePagesController.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutCubic),
                      child: Icon(Icons.home_rounded, color: pageIndex == 0 ? Colors.black : Colors.black.withOpacity(0.5))
                    ),
                    GestureDetector(
                      onTap: () => homePagesController.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutCubic),
                      child: Icon(Icons.screen_search_desktop_rounded, color: pageIndex == 1 ? Colors.black : Colors.black.withOpacity(0.5))
                    ),
                    GestureDetector(
                      onTap: () => homePagesController.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutCubic),
                      child: Icon(Icons.favorite_rounded, color: pageIndex == 2 ? Colors.black : Colors.black.withOpacity(0.5))
                    ),
                    GestureDetector(
                      onTap: () => homePagesController.animateToPage(3, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutCubic),
                      child: Icon(Icons.person, color: pageIndex == 3 ? Colors.black : Colors.black.withOpacity(0.5))
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Bottom Navigation Bar -- E n d --
        ],
      ),
    );
  }
}

