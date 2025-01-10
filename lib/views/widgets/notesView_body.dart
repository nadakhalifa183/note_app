import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';

import 'package:note_app/views/widgets/notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
   BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 40.h , right: 22.w ,left: 22.h),
      child: Column(
        children: [
          const CustomAppBar(title: 'Notes', icon: Icons.search,),
        SizedBox(height: 8.h,),
   const Expanded(child: NotesListView()),
       
       ],
      ),
    );
  }
}

