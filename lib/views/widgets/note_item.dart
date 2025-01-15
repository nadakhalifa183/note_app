import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return EditNoteView(
          note: note,
        );
      })),
      child: Container(
        padding: EdgeInsets.only(top: 12.h, bottom: 16.h, left: 12.w),
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(
                  fontFamily: "Otama-ep",
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(238, 177, 177, 177),
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.white,
                    size: 24,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(right: 28.w),
              child: Text(
                note.date,
                style:
                    const TextStyle(color: Color.fromARGB(255, 196, 194, 194)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
