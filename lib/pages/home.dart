import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  static final namedRoute = "HomePageRoute";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 70,
        width: 70,
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: FloatingActionButton(
          child: Text(
            "Pick",
            style: GoogleFonts.poppins(color: Color(0xFF4D455D)),
          ),
          backgroundColor: Color(0xFFF5E9CF),
          onPressed: () {
            modal(context);
          },
        ),
      ),
      backgroundColor: Color(0xFF4D455D),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Center(
            child: Text(
          "HOME PAGE",
          style: GoogleFonts.poppins(),
        )),
        backgroundColor: Color(0xFF4D455D),
        elevation: 0,
      ),
    );
  }
}

class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 45;
}

Future<Widget?> modal(BuildContext context) {
  return showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xFFE96479),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    "Modal",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        decoration: TextDecoration.none),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              )),
        );
      });
}
