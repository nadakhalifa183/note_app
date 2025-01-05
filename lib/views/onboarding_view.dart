import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:note_app/constants.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static String id = "OnboardingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.only(bottom: 40.h),
      //   child: ElevatedButton(

      //        style: ElevatedButton.styleFrom(
      //        minimumSize: Size(75.w, 75.h),
      //         backgroundColor: PrimaryColors.kPrimaryColor ,
      //        shape: const CircleBorder()
      //        ),
      //         onPressed: (){}, child: const Icon(Icons.arrow_forward_ios , color: Colors.white,)),
      // ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 165.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Image.asset(
                width: 282.w,
                height: 231.h,
                "assets/images/rafiki.png",
              ),
            ),
            SizedBox(height: 55.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                "All thoughts.  One place.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Otama-ep",
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                "Dive right in and clear that mind of yours by                                                       writing your thoughts down.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff686868),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(75.w, 75.h),
                    backgroundColor: PrimaryColors.kPrimaryColor,
                    shape: const CircleBorder()),
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
