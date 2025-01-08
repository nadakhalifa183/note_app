import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_textfield.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32.h,
            ),
            const CustomTextfield(
              hintText: "Title",
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomTextfield(
              hintText: "content",
              maxLines: 5,
            ),
             SizedBox(
              height: 32.h,
            ),
         const   CustomButton(),
          SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
