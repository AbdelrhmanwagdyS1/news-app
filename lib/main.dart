import 'package:flutter/material.dart';
import 'package:news_app/core/theme/theme.dart';
import 'package:news_app/routes/app_routes.dart';
import 'package:news_app/view/screens/home_screen.dart';

void main() async{

  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      themeMode: .dark,
      initialRoute: AppRoutes.home,
      routes: {AppRoutes.home: (context) => HomeScreen()},
    );
  }
}
