import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/constants.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12.h,bottom: 16.h ,left: 12.w),
       decoration: BoxDecoration(
        color: PrimaryColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(16)
       ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:  Text(
                        "Note 1",
                        style: TextStyle(
                fontFamily: "Otama-ep",
                   fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      color:Colors.white,
                        ),
                      ),
                      subtitle:  Padding(
                        padding: const EdgeInsets.only(top: 12 , bottom: 12),
                        child: Text(
                          "Use free text area, feel free to write it all Use free text area, feel free to write itarea,...........",
                          style: TextStyle(
                                        fontFamily: "Roboto",
                                           fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color:const Color.fromARGB(238, 177, 177, 177),
                          ),
                        ),
                      ),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.trash , color: Colors.white,size: 24,)),
          ),
        Padding(
          padding: EdgeInsets.only(right:28.w),
          child:const   Text(
            
            "22 April  2002" ,
            
             style: TextStyle(color: Color.fromARGB(255, 196, 194, 194)),),
        )
        ],
      ),
    );
  }
}