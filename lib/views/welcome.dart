import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:uotc/views/common/custom_text.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return Scaffold(
      body: Column(
        children: [
          // Header -- S t a r t --
          Container(
            height: height/2.5, width: width,
            decoration: BoxDecoration(
              color: const Color(0xFF171925),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(width/3),
                bottomRight: Radius.circular(width/3),
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: const Alignment(0,1.4),
                  child: Container(
                    height: 100.sp, width: 100.sp,
                    decoration: BoxDecoration(
                      color: const Color(0xFFfff1d2),
                      borderRadius: BorderRadius.circular(100.sp)
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Header -- E n d --

          SizedBox(height: height/6),

          // Body Content -- S t a r t --
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // App Title & Description -- S t a r t --
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText.createCustomTajawalText(
                          text: "E Commerce",
                          fontSize: 35,
                          screenHeight: height,
                          weight: FontWeight.bold
                        ),
                        SizedBox(height: 20.h),
                        CustomText.createCustomTajawalText(
                          text: "Amet officia nisi duis velit magna dolore id. Qui aute nulla cupidatat eiusmod in in reprehenderit esse enim et Lorem eiusmod aliquip. Consequat proident qui ea minim qui minim culpa ex tempor esse duis ipsum mollit id. Nisi irure Lorem amet voluptate in aute est sint occaecat consectetur anim sit excepteur aliquip. Incididunt nulla officia labore dolore non do Lorem proident velit adipisicing. Irure magna duis fugiat aliquip.",
                          fontSize: 16,
                          screenHeight: height,
                          maxLines: 2,
                          align: TextAlign.center,
                          weight: FontWeight.w600
                        ),
                      ],
                    ),
                  ),
                  // App Title & Description -- E n d --

                  // Get Started Button -- S t a r t --
                  InkWell(
                    onTap: () => context.go('/register'),
                    child: Container(
                      height: 55.h, width: width /1.5,
                      margin: EdgeInsets.only(bottom: height / 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1d201e),
                        borderRadius: BorderRadius.circular(60.sp)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5.h),
                                  child: CustomText.createCustomTajawalText(
                                    text: "Get Started For Free",
                                    color: Colors.white,
                                    weight: FontWeight.bold,
                                    fontSize: 16,
                                    screenHeight: height
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 20.w),
                            child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 15.sp,)
                          )
                        ],
                      ),
                    ),
                  ),
                  // Get Started Button -- E n d --
                ],
              ),
            ),
          ),
          // Body Content -- E n d --
        ],
      ),
    );
  }
}