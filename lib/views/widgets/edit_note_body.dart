import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_textfield.dart';

class EditNoteViewbody extends StatelessWidget {
  const EditNoteViewbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, right: 22.w, left: 22.h),
      child: Column(
        children: [
          const CustomAppBar(
            title: 'Edit ',
            icon: Icons.check,
          ),
          SizedBox(
            height: 16.h,
          ),
          const CustomTextfield(hintText: "Title"),
          SizedBox(
            height: 16.h,
          ),
          const CustomTextfield(
            hintText: "content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
