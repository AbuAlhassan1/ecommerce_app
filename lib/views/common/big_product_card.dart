import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_fade/image_fade.dart';
import 'package:uotc/views/common/custom_text.dart';

class BigProductCard extends StatelessWidget {
  const BigProductCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return InkWell(
      onTap: () => context.push('/home/product/1'),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.sp),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 12,
              spreadRadius: -10,
              offset: Offset(0,3)
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image -- S t a r t --
            AspectRatio(
              aspectRatio: 1,
              child: Stack(
                children: [
                  // Main Image -- S t a r t --
                  Container(
                    height: double.infinity, width: double.infinity,
                    color: Colors.black.withOpacity(0.8),
                    child: ImageFade(
                      fit: BoxFit.cover,
                      image: NetworkImage(image),
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
              ),
            ),
            // Product Image -- E n d --
    
            SizedBox(height: 5.h),
    
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
    
                  // Product Title Or Name -- S t a r t --
                  CustomText.createCustomTajawalText(
                    text: "Incididunt magna duis voluptate",
                    fontSize: 12,
                    screenHeight: height,
                    maxLines: 3
                  ),
                  // Product Title Or Name -- E n d --
    
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
            )
          ],
        ),
      ),
    );
  }
}