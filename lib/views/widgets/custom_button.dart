import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap ;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      child: Container(
        height: 55.h,
        width:MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
      color: PrimaryColors.kPrimaryColor,
      borderRadius: BorderRadius.circular(8),
         ),
       child:  Center(
        child:isLoading?SizedBox(
          height: 24.h,
          width: 24.w,
          child: const CircularProgressIndicator(color: Colors.white,)):const Text("Add" , style: TextStyle(color: Colors.white),),
       ),
      
      
      ),
    );
  }
}