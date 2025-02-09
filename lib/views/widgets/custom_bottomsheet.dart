import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
              listener: (context, state) {
      if (state is AddNoteSuccess) {
       BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        Navigator.pop(context);
      }
      if (state is AddNotefailure) {
        debugPrint("failing ${state.errorMessage}");
      }
              },
              builder: (context, state) {
      return AbsorbPointer(
        absorbing:  state is AddNoteLoading ? true : false,
        child: Padding(
             padding: EdgeInsets.only(left: 16.w , right:16.w  ,bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const SingleChildScrollView(child:  AddNoteForm()),
        ),
      );
              },
            ),
    );
   
  }
}
