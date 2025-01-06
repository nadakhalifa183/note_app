import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';

import 'package:note_app/views/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 40.h , right: 22.w ,left: 22.h),
      child: Column(
        children: [
          const CustomAppBar(),
        SizedBox(height: 8.h,),
   const Expanded(child: NotesListView()),
       
       ],
      ),
    );
  }
}

