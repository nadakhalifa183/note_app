import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = PrimaryColors.kPrimaryColor ;
addNote(NoteModel note){
  note.color = color.value ;
emit(AddNoteLoading());
try {
  var notesBox = Hive.box<NoteModel>(kNotesBox); 
  notesBox.add(note);
  emit(AddNoteSuccess()); 
}  catch (e) {
 emit(AddNotefailure(errorMessage: e.toString()));
}
}


}
