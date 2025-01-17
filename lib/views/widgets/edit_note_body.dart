import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_textfield.dart';
import 'package:note_app/views/widgets/edit_note_colors.dart';

class EditNoteViewbody extends StatefulWidget {
  const EditNoteViewbody({
    super.key, required this.note,
  });

  final NoteModel note ;

  @override
  State<EditNoteViewbody> createState() => _EditNoteViewbodyState();
}

class _EditNoteViewbodyState extends State<EditNoteViewbody> {
  String? title , content ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, right: 22.w, left: 22.h),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title ;
               widget.note.subtitle = content ?? widget.note.subtitle ;
               widget.note.save();
               BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        Navigator.pop(context);
            },
            title: 'Edit ',
            icon: Icons.check,
          ),
          SizedBox(
            height: 16.h,
          ),
           CustomTextfield(
             onChanged: (value){
             title = value ;
            },
            hintText: widget.note.title),
          SizedBox(
            height: 16.h,
          ),
          CustomTextfield(
            onChanged: (value){
              content = value ;
            },
            hintText: widget.note.subtitle,
            maxLines: 5,
          ),
           SizedBox(
            height: 16.h,
          ),
         EditNoteColors(note: widget.note,)
        ],
      ),
    );
  }
}
