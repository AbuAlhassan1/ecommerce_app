import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_fade/image_fade.dart';
import 'package:uotc/views/common/custom_text.dart';

class SmallProductCard extends StatelessWidget {
  const SmallProductCard({super.key});

  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return SizedBox(
      height: 230.h, width: 150.w,
      // margin: EdgeInsetsDirectional.only(start: 15.w, end: index == 9 ? 15.w : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image -- S t a r t --
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp)
              ),
              child: Stack(
                children: [
                  // Main Image -- S t a r t --
                  Container(
                    height: double.infinity, width: double.infinity,
                    color: Colors.black.withOpacity(0.8),
                    child: ImageFade(
                      fit: BoxFit.cover,
                      image: const NetworkImage("https://source.unsplash.com/random?sin=1"),
                      loadingBuilder: (context, progress, chunkEvent) => Center(child: CircularProgressIndicator(color: Colors.white, strokeWidth: 1.sp,)),
                    ),
                  ),
                  // Main Image -- E n d --

                  // Add To Favorite -- S t a r t --
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Container(
                      height: 35.sp, width: 35.sp,
                      margin: EdgeInsets.all(10.sp),
                      padding: EdgeInsets.all(8.sp),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(50.sp)
                      ),
                      child: SvgPicture.asset("assets/icons/fi-rr-heart.svg", color: Colors.white),
                    ),
                  ),
                  // Add To Favorite -- E n d --
                ],
              )
            ),
          ),
          // Product Image -- E n d --

          SizedBox(height: 5.h),

          // Product Title Or Name -- S t a r t --
          CustomText.createCustomTajawalText(
            text: "product name",
            fontSize: 16,
            screenHeight: height,
            weight: FontWeight.bold
          ),
          // Product Title Or Name -- E n d --

          // Product Type -- S t a r t --
          CustomText.createCustomTajawalText(
            text: "product type",
            color: Colors.black.withOpacity(0.5),
            fontSize: 14,
            screenHeight: height,
          ),
          // Product Type -- E n d --

          SizedBox(height: 10.h),

          // Product Price -- S t a r t --
          Row(
            children: [
              CustomText.createCustomTajawalText(
                text: "\$",
                color: Colors.black.withOpacity(0.8),
                fontSize: 14,
                screenHeight: height,
                weight: FontWeight.bold
              ),
              CustomText.createCustomTajawalText(
                text: "23",
                fontSize: 16,
                screenHeight: height,
                weight: FontWeight.bold
              ),
            ],
          ),
          // Product Price -- E n d --
        ],
      ),
    );
  }
}