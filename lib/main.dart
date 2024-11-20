// main.dart

import 'package:cortesapp/screens/logiscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/auth_cubit.dart';
import 'utils/themes.dart';

void main() {

  runApp(CutEasyApp());
}

class CutEasyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CutEasy',
        theme: appTheme,
        home: LoginScreen(),
      ),
    );
  }
}
