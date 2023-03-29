import 'package:flutter/material.dart';
import 'package:nudge_task/pages/contact.dart';
import 'package:nudge_task/pages/home.dart';
import 'package:nudge_task/pages/newPage.dart';
import 'package:nudge_task/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Root(),
        routes: {
          Root.namedRoute: (context) => const Root(),
          HomePage.namedRoute: (context) => const HomePage(),
          ContactPage.namedRoute: (context) => const ContactPage(),
          NewPage.namedRoute: (context) => const NewPage(),
        });
  }
}
