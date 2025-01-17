
import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/colors_listview.dart';

class EditNoteColors extends StatefulWidget {
  const EditNoteColors({super.key, required this.note});
  final NoteModel note ;

  @override
  State<EditNoteColors> createState() => _EditNoteColorsState();
}

class _EditNoteColorsState extends State<EditNoteColors> {
 late int currentIndex ;
  @override
  void initState() {
   currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                 widget.note.color = kColors[index].value ;
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
