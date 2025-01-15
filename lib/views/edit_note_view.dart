import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

import 'package:note_app/views/widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note ;
 static String id = "EditNoteView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewbody(note: note,),
    );
  }
}