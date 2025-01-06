import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

import 'package:note_app/views/widgets/notesView_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "HomeView";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    floatingActionButton: FloatingActionButton(onPressed: (){

      
    } , child: const Icon(Icons.add),),
      body: const NotesViewBody()
    );
  }
}





