import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:uotc/views/common/custom_text.dart';
import 'package:uotc/views/common/textfield_with_lable_ontop.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            width: width,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: SizedBox(
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Page Header -- S t a r t --
                    Container(
                      height: height/3.5,
                      color: Colors.transparent,
                      // margin: EdgeInsets.only(bottom: 50.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText.createCustomTajawalText(
                            text: "E Commerce",
                            fontSize: 30,
                            screenHeight: height,
                            weight: FontWeight.bold
                          ),
            
                          SizedBox(height: 10.h),
            
                          CustomText.createCustomTajawalText(
                            text: "Please login to use the App",
                            fontSize: 14,
                            screenHeight: height,
                            align: TextAlign.center
                          ),
                        ],
                      ),
                    ),
                    // Page Header -- E n d --
            
                    // Main Content -- S t a r t --
                    // Signup Form -- S t a r t --
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const TextFieldWithOutSideLable(hint: "Your email address"),
                            const TextFieldWithOutSideLable(hint: "Your password", isPassword: true),
                    
                            // Continue Button -- S t a r t --
                            Padding(
                              padding: EdgeInsets.only(bottom: 20.h),
                              child: InkWell(
                                onTap: () => context.push("/home"),
                                borderRadius: BorderRadius.circular(100.sp),
                                child: Container(
                                  height: 50.sp, width: width,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF1b1f23),
                                    borderRadius: BorderRadius.circular(100.sp)
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
                                                text: "Continue",
                                                color: Colors.white,
                                                weight: FontWeight.bold,
                                                fontSize: 18,
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
                                  )
                                ),
                              ),
                            ),
                            // Continue Button -- E n d --
                    
                            // Divider -- S t a r t --
                            Padding(
                              padding: EdgeInsets.only(bottom: 30.h, top: 10.h),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 1.h,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.6),
                                        borderRadius: BorderRadius.circular(50.sp)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                                    child: CustomText.createCustomTajawalText(
                                      text: "or",
                                      fontSize: 14,
                                      screenHeight: height
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 1.h,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.6),
                                        borderRadius: BorderRadius.circular(50.sp)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Divider -- E n d --
                    
                            // Signup With [ G O O G L E ] Button -- S t a r t --
                            Padding(
                              padding: EdgeInsets.only(bottom: 20.h),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(100.sp),
                                onTap: () => context.push("/home"),
                                child: Container(
                                  height: 50.sp, width: width,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)
                                    ),
                                    borderRadius: BorderRadius.circular(100.sp)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 25.sp, width: 25.sp,
                                        child: Image.asset("assets/icons/google-icon.png")
                                      ),
                                      SizedBox(width: 10.w),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5.h),
                                        child: CustomText.createCustomTajawalText(
                                          text: "Sign up with Google",
                                          color: Colors.black,
                                          weight: FontWeight.bold,
                                          fontSize: 16,
                                          screenHeight: height
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // Signup With [ G O O G L E ] Button -- E n d --
                    
                            // Signup With [ A p p l e ] Button -- S t a r t --
                            Padding(
                              padding: EdgeInsets.only(bottom: 20.h),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(100.sp),
                                onTap: () => context.push("/home"),
                                child: Container(
                                  height: 50.sp, width: width,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)
                                    ),
                                    borderRadius: BorderRadius.circular(100.sp)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 25.sp, width: 25.sp,
                                        child: Image.asset("assets/icons/apple_icon.png")
                                      ),
                                      SizedBox(width: 10.w),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5.h),
                                        child: CustomText.createCustomTajawalText(
                                          text: "Sign up with Apple",
                                          color: Colors.black,
                                          weight: FontWeight.bold,
                                          fontSize: 16,
                                          screenHeight: height
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // Signup With [ A p p l e ] Button -- E n d --
                          ],
                        ),
                      ),
                    ),
                    // Signup Form -- E n d --
                    // Main Content -- E n d --
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}