import 'package:flutter/material.dart';
import 'package:monks_helper/app/controller/home_controller.dart';
import 'package:monks_helper/app/view/home_view.dart';
import 'package:monks_helper/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => HomeController(),
        )
      ],
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.mainTheme(),
        home: HomeView(),
      ),
    );
  }
}
