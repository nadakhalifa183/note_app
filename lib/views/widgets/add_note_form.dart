import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode? autovalidateMode = AutovalidateMode.disabled ;

String? title , subTitle ; 
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32.h,
          ),
           CustomTextfield(
            onSaved: (value) {
              title  = value ;
            },
            hintText: "Title",
          ),
          SizedBox(
            height: 16.h,
          ),
           CustomTextfield(
            onSaved: (value) {
              subTitle  = value ;
            },
            hintText: "content",
            maxLines: 5,
          ),
           SizedBox(
            height: 32.h,
          ),
         CustomButton(
        onTap: () {
        if(formKey.currentState!.validate()){
          formKey.currentState!.save();
        }else{
          autovalidateMode = AutovalidateMode.always ;
          setState(() {
            
          });
        }
        },
       ),
        SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
