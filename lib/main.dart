import 'package:flutter/material.dart';
import 'package:stasks/constants.dart';
import 'package:stasks/screens/dashboard/dashboard_screen.dart';
import 'package:stasks/screens/home/home_screen.dart';

void main() {
  runApp(const StasksApp());
}

class StasksApp extends StatelessWidget {
  const StasksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: stBackgroundColor,
        primaryColor: stPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: stTextColor),
      ),
      initialRoute: HomeScreen.screenId,
      routes: {
        HomeScreen.screenId : (context) => HomeScreen(appTitle: "Stasks",),
        DashboardScreen.screenId: (context) => DashboardScreen(),
      },
    );
  }
}