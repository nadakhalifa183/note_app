import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/home_view.dart';
import 'package:note_app/views/onboarding_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(FigmaDesign.widthScreen, FigmaDesign.heightScreen),
      minTextAdapt: true,
      child: BlocProvider(
          create: (context) => NotesCubit(),
        child: MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          routes: {
            OnboardingView.id: (context) => const OnboardingView(),
            HomeView.id: (context) => const HomeView(),
            // EditNoteView.id: (context) => const EditNoteView(),
          },
          initialRoute: OnboardingView.id,
        ),
      ),
    );
  }
}
