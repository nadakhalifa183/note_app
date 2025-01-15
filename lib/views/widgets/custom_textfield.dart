import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hintText,  this.maxLines =1, this.onSaved, this.onChanged});
  final String hintText;
  final int maxLines ;
  final void Function(String)? onChanged ;
  final void Function(String?)? onSaved ;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onChanged:onChanged ,
      onSaved:onSaved ,
      validator: (value) {
        if (value?.isEmpty ?? true){
       return "field is required" ;
        }else{
          return null ;
        }
      },
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