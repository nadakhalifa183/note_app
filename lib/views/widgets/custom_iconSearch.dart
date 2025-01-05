import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/constants.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:35.w,
      height:35.h,
      decoration: BoxDecoration(
        color: PrimaryColors.kPrimaryColor.withOpacity(.9),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Icon(Icons.search , color: Colors.white,size:22.sp,));
  }
}