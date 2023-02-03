import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_fade/image_fade.dart';
import 'package:uotc/views/common/custom_text.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final PageController contentPageController = PageController();

  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return Scaffold(
      body: SizedBox(
        height: height,
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: double.infinity, width: double.infinity,
                color: Colors.black.withOpacity(0.8),
                child: ImageFade(
                  fit: BoxFit.cover,
                  image: const NetworkImage("https://source.unsplash.com/random?sin=1"),
                  loadingBuilder: (context, progress, chunkEvent) => Center(child: CircularProgressIndicator(color: Colors.white, strokeWidth: 1.sp,)),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: width, height: height / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product Title or Name -- S t a r t --
                          CustomText.createCustomTajawalText(
                            text: "Ayu Stripped Blazer",
                            letterSpacing: -0.9,
                            fontSize: 26,
                            screenHeight: height,
                            weight: FontWeight.bold
                          ),
                          // Product Title or Name -- E n d --

                          SizedBox(height: 5.h,),

                          // Product Category or Type -- S t a r t --
                          CustomText.createCustomTajawalText(
                            text: "Women's blazers",
                            letterSpacing: -0.9,
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 16,
                            screenHeight: height,
                          ),
                          // Product Category or Type -- E n d --

                          SizedBox(height: 5.h,),

                          // Product Price -- S t a r t --
                          Row(
                            children: [
                              // Current Price -- S t a r t --
                              SizedBox(
                                child: Row(
                                  children: [
                                    CustomText.createCustomTajawalText(
                                      text: "\$",
                                      color: Colors.black.withOpacity(0.5),
                                      fontSize: 14,
                                      screenHeight: height,
                                      weight: FontWeight.bold
                                    ),
                                    CustomText.createCustomTajawalText(
                                      text: "39.99",
                                      color: Colors.black,
                                      fontSize: 24,
                                      screenHeight: height,
                                      weight: FontWeight.bold
                                    ),
                                  ],
                                ),
                              ),
                              // Current Price -- E n d --

                              SizedBox(width: 10.w),

                              // Discounted Price -- S t a r t --
                              SizedBox(
                                child: Row(
                                  children: [
                                    CustomText.createCustomTajawalText(
                                      text: "\$",
                                      color: Colors.black.withOpacity(0.5),
                                      fontSize: 12,
                                      screenHeight: height,
                                      weight: FontWeight.bold
                                    ),
                                    CustomText.createCustomTajawalText(
                                      text: "39.99",
                                      color: Colors.black.withOpacity(0.5),
                                      fontSize: 18,
                                      screenHeight: height,
                                      weight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough
                                    ),
                                  ],
                                ),
                              ),
                              // Discounted Price -- E n d --
                            ],
                          ),
                          // Product Price -- E n d --
                        ],
                      ),
                    ),

                    SizedBox(height: 15.h),

                    // Details And Reviews -- S t a r t --
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          children: [
                            // Tab Bar -- S t a r t --
                            Container(
                              height: 40.h,
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black.withOpacity(0.2),
                                    width: 0.5
                                  )
                                )
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                      height: 40.h,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(5.sp),
                                              onTap: () => contentPageController.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutCubic),
                                              child: SizedBox(
                                                height: double.infinity, width: double.infinity,
                                                child: Align(
                                                  alignment: AlignmentDirectional.centerStart,
                                                  child: CustomText.createCustomTajawalText(
                                                    text: "Details",
                                                    fontSize: 18,
                                                    letterSpacing: -0.9,
                                                    weight: FontWeight.bold,
                                                    screenHeight: height
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          Expanded(
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(5.sp),
                                              onTap: () => contentPageController.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeInOutCubic),
                                              child: SizedBox(
                                                height: double.infinity, width: double.infinity,
                                                child: Align(
                                                  alignment: AlignmentDirectional.centerStart,
                                                  child: CustomText.createCustomTajawalText(
                                                    text: "Reviews",
                                                    fontSize: 18,
                                                    letterSpacing: -0.9,
                                                    weight: FontWeight.bold,
                                                    screenHeight: height
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  const Expanded(
                                    flex: 3,
                                    child: SizedBox(),
                                  )
                                ],
                              ),
                            ),
                            // Tab Bar -- E n d --

                            Expanded(
                              child: SizedBox(
                                width: width,
                                child: Stack(
                                  children: [
                                    PageView(
                                      controller: contentPageController,
                                      physics: const NeverScrollableScrollPhysics(),
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              CustomText.createCustomTajawalText(
                                                text: "In laborum adipisicing ullamco eiusmod duis laboris enim amet aliqua tempor ut elit minim qui. Voluptate est deserunt Lorem elit veniam mollit deserunt cupidatat ad. Ad consequat id deserunt laborum ex velit nisi officia laboris sint est anim. Laborum do laborum excepteur ut qui pariatur id proident. Ut et cupidatat eiusmod adipisicing ipsum duis consequat Lorem. Culpa laborum ad duis qui. Duis elit irure non ea culpa est commodo officia est sunt sunt nulla ut est.",
                                                color: Colors.black.withOpacity(0.8),
                                                fontSize: 16,
                                                letterSpacing: -0.9,
                                                screenHeight: height,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis
                                              ),

                                              // Select Size -- S t a r t --
                                              SizedBox(height: 10.h),
                                              CustomText.createCustomTajawalText(
                                                text: "Select size",
                                                fontSize: 14,
                                                align: TextAlign.start,
                                                screenHeight: height
                                              ),

                                              SizedBox(height: 5.h),

                                              SizedBox(
                                                width: width,
                                                child: Wrap(
                                                  crossAxisAlignment: WrapCrossAlignment.start,
                                                  runSpacing: 5.sp,
                                                  spacing: 5.sp,
                                                  children: List.generate(5, (index) => Container(
                                                    height: 30.h,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.black.withOpacity(0.8)
                                                      ),
                                                      borderRadius: BorderRadius.circular(5.sp)
                                                    ),
                                                    child: Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets.only(top: 2.h),
                                                            child: CustomText.createCustomTajawalText(
                                                              text: "XXXL",
                                                              fontSize: 14,
                                                              align: TextAlign.center,
                                                              weight: FontWeight.bold,
                                                              screenHeight: height
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  )),
                                                ),
                                              ),
                                              // Select Size -- E n d --
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                                        ),
                                      ],
                                    ),

                                    // Add To Cart Button -- S t a r t --
                                    Positioned(
                                      bottom: 0, left: 0, right: 0,
                                      child: Container(
                                        height: 60.h, width: 0,
                                        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                                        child: Row(
                                          children: [
                                            AspectRatio(
                                              aspectRatio: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.black.withOpacity(0.9),
                                                    width: 2.sp
                                                  ),
                                                  borderRadius: BorderRadius.circular(5.sp)
                                                ),
                                                child: Icon(Icons.favorite_border_rounded, color: Colors.black.withOpacity(0.9)),
                                              ),
                                            ),

                                            SizedBox(width: 5.w),

                                            Expanded(
                                              child: Container(
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.black.withOpacity(0.9),
                                                    width: 2.sp
                                                  ),
                                                  borderRadius: BorderRadius.circular(5.sp)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.shopping_cart_outlined, color: Colors.black.withOpacity(0.9)),
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 3.h),
                                                      child: CustomText.createCustomTajawalText(
                                                        text: "Add to cart",
                                                        color: Colors.black.withOpacity(0.8),
                                                        fontSize: 16,
                                                        letterSpacing: -0.9,
                                                        screenHeight: height,
                                                        weight: FontWeight.bold,
                                                        overflow: TextOverflow.ellipsis
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),

                                            SizedBox(width: 5.w),

                                            Expanded(
                                              child: Container(
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Colors.black.withOpacity(0.9),
                                                  border: Border.all(
                                                    color: Colors.black.withOpacity(0.9),
                                                    width: 2.sp
                                                  ),
                                                  borderRadius: BorderRadius.circular(5.sp)
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(top: 3.h),
                                                    child: CustomText.createCustomTajawalText(
                                                      text: "Check out",
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      letterSpacing: -0.9,
                                                      screenHeight: height,
                                                      weight: FontWeight.bold,
                                                      overflow: TextOverflow.ellipsis
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                    // Add To Cart Button -- E n d --
                                  ],
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Details And Reviews -- E n d --
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}