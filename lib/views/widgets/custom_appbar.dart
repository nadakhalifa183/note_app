import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/custom_iconSearch.dart';

class CustomAppBar extends StatelessWidget  {
  const CustomAppBar({
    super.key, required this.title, required this.icon,
  });
 final String title ;
final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Text(
                 title,
                  style: TextStyle(
          fontFamily: "Otama-ep",
             fontSize: 30.sp,
                fontWeight: FontWeight.w400,
                color:PrimaryColors.kPrimaryColor,
                  ),
                ),
      const Spacer(flex: 1,),
      CustomIconSearch(icon: icon,)
        ],
      );
  }
  

}


