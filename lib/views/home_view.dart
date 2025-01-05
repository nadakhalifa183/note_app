import 'package:flutter/material.dart';

import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/notesView_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    
      body: NotesViewBody()
    );
  }
}






