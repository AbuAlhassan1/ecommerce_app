import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_fade/image_fade.dart';
import 'package:uotc/views/common/big_product_card.dart';
import 'package:uotc/views/common/custom_text.dart';
import 'package:uotc/views/common/small_product_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [SliverList(delegate: SliverChildListDelegate([

        // Header -- S t a r t --
        SafeArea(
          child: Container(
            width: width,
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText.createCustomTajawalText(
                        text: "Hi Andrew,",
                        letterSpacing: -0.8,
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 14,
                        screenHeight: height,
                        align: TextAlign.start
                      ),
                      SizedBox(height: 5.h,),
                      CustomText.createCustomTajawalText(
                        text: "Discover your style",
                        letterSpacing: -0.8,
                        color: Colors.black,
                        fontSize: 20,
                        screenHeight: height,
                        weight: FontWeight.bold
                      ),
                    ],
                  ),
                ),
        
                const Icon(Icons.shopping_cart_outlined)
              ],
            ),
          ),
        ),
        // Header -- E n d --

        // Image Slider -- S t a r t --
        Container(
          height: 190.h,
          margin: EdgeInsets.only(bottom: 20.h),
          child: CarouselSlider(
            options: CarouselOptions(
              disableCenter: false,
              viewportFraction: 0.9,
              enlargeFactor: 0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              padEnds: false,
              height: 190.h,
            ),
            items: List.generate(5, (index) => Container(
              width: width,
              margin: EdgeInsetsDirectional.only(start: 15.w),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp)
              ),
              child: Stack(
                children: [
                  Container(
                    height: double.infinity, width: double.infinity,
                    color: Colors.black.withOpacity(0.8),
                    child: ImageFade(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://source.unsplash.com/random?sin=${index+2100}"),
                      loadingBuilder: (context, progress, chunkEvent) => Center(child: CircularProgressIndicator(color: Colors.white, strokeWidth: 1.sp,)),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.bottomStart,
                    child: Container(
                      height: 35.sp, width: 100.sp,
                      margin: EdgeInsets.all(15.sp),
                      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 3.h),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1d201e),
                        borderRadius: BorderRadius.circular(5.sp)
                      ),
                      child: FittedBox(
                        child: CustomText.createCustomTajawalText(
                          text: "Explore now",
                          color: Colors.white,
                          fontSize: 14,
                          screenHeight: height
                        ),
                      ),
                    ),
                  )
                ],
              )
            )),
          ),
        ),
        // Image Slider -- E n d --

        // New Products Slider -- S t a r t --
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Section Header -- S t a r t --
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: CustomText.createCustomTajawalText(
                text: "New Drop",
                fontSize: 18,
                screenHeight: height,
                weight: FontWeight.bold
              ),
            ),
            // Section Header -- E n d --

            // Section Content -- S t a r t --
            SizedBox(
              height: 230.h, width: width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsetsDirectional.only(start: 15.w, end: index == 9 ? 15.w : 0),
                  child: SmallProductCard(image: "https://source.unsplash.com/random?sin=$index",),
                )
              ),
            ),
            // Section Content -- E n d --
          ],
        ),
        // New Products Slider -- E n d --

      ]))],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Header -- S t a r t --
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: CustomText.createCustomTajawalText(
                text: "Our Products",
                fontSize: 18,
                screenHeight: height,
                weight: FontWeight.bold
              ),
            ),
          ),
          // Section Header -- E n d --
      
          Expanded(
            child: MasonryGridView.builder(
              crossAxisSpacing: 10.sp,
              mainAxisSpacing: 10.sp,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 50,
              itemBuilder: (context, index) => BigProductCard(image: "https://source.unsplash.com/random?sin=$index")
            ),
          ),
        ],
      ),
    );
  }
}