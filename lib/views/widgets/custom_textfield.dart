import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hintText,  this.maxLines =1});
  final String hintText;
  final int maxLines ;
  @override
  Widget build(BuildContext context) {
    return  TextField(
   cursorColor: PrimaryColors.kPrimaryColor,
  maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:const TextStyle(color: PrimaryColors.kPrimaryColor ),
      
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
       
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(

borderRadius: BorderRadius.circular(12),
borderSide:const BorderSide(color: PrimaryColors.kPrimaryColor)
      );
  }
}