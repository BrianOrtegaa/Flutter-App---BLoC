import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page/home_page.dart';
import 'user/bloc/user_bloc.dart';
import 'task/bloc/task_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserBloc()),
        BlocProvider(create: (_) => TaskBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bloc Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.paytoneOneTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
