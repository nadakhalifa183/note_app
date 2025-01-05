import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(FigmaDesign.widthScreen,FigmaDesign.heightScreen),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          OnboardingView.id : (context)=> const OnboardingView()
        },
        initialRoute: OnboardingView.id,
       ),
    );
  }
}
