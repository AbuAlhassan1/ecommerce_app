import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uotc/views/common/custom_text.dart';

class TextFieldWithOutSideLable extends StatefulWidget {
  const TextFieldWithOutSideLable({super.key, required this.hint, this.isPassword = false});
  final String hint;
  final bool isPassword;

  @override
  State<TextFieldWithOutSideLable> createState() => _TextFieldWithOutSideLableState();
}

class _TextFieldWithOutSideLableState extends State<TextFieldWithOutSideLable> {
  bool secured = true;

  @override
  Widget build(BuildContext context) {

    // Variables -- S t a r t --
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    // Variables -- E n d --

    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // TextField Header -- S t a r t --
          CustomText.createCustomTajawalText(
            text: widget.hint,
            fontSize: 14,
            screenHeight: height,
            weight: FontWeight.bold
          ),
          // TextField Header -- E n d --

          SizedBox(height: 8.h),

          // Main TextField -- S t a r t --
          TextField(
            obscureText: secured,
            decoration: InputDecoration(
              suffixIcon: widget.isPassword ? InkWell(
                borderRadius: BorderRadius.circular(50.sp),
                onTap: () => setState(() => secured = !secured),
                child: Container(
                  height: 50.sp, width: 50.sp,
                  color: Colors.transparent,
                  padding: EdgeInsets.all(14.sp),
                  child: SvgPicture.asset(secured ? "assets/icons/fi-sr-eye.svg" : "assets/icons/fi-sr-eye-crossed.svg", color: Colors.grey),
                ),
              ) : null,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20.w),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.sp)
              ),
            ),
          ),
          // Main TextField -- E n d --
        ],
      ),
    );
  }
}