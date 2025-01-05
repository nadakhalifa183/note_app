import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/custom_iconSearch.dart';

class CustomAppBar extends StatelessWidget  {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Text(
                  "Notes",
                  style: TextStyle(
          fontFamily: "Otama-ep",
             fontSize: 30.sp,
                fontWeight: FontWeight.w400,
                color:PrimaryColors.kPrimaryColor,
                  ),
                ),
      const Spacer(flex: 1,),
      const CustomIconSearch()
        ],
      );
  }
  

}


