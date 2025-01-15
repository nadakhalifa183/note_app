import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: PrimaryColors.kPrimaryColor,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: color,
            ),
          )
        :  CircleAvatar(
            radius: 38,
            backgroundColor:  color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});


  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
   
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff8f916b),
    Color(0xff00532d),
    Color(0xff028476),
    Color(0xffd9ce88),
    Color(0xff2c332d),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
