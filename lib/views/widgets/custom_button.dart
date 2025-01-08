import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width:MediaQuery.of(context).size.width,
   decoration: BoxDecoration(
    color: PrimaryColors.kPrimaryColor,
    borderRadius: BorderRadius.circular(8),
   ),
 child: Center(
  child: Text("Add" , style: TextStyle(color: Colors.white),),
 ),


    );
  }
}