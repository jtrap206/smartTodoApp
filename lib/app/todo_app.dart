
import 'package:flutter/material.dart';
import 'package:new_todo/screen/screens.dart';
import 'package:new_todo/config/config.dart';
import 'package:new_todo/config/themes/app_themes.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      home:const HomeScreen()
    );
  }
}




