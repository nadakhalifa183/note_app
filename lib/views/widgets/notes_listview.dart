import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:16.h),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context , index){
        return  Padding(
          padding: EdgeInsets.symmetric(vertical:4.h),
          child:const NoteItem(),
        );
      }),
    );
  }
}