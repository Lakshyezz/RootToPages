import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPage extends StatelessWidget {
  static final namedRoute = "NewPageRoute";
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4D455D),
      appBar: AppBar(
        title: Center(),
        backgroundColor: Color(0xFF4D455D),
        elevation: 0,
      ),
      body: Center(
          child: Text(
        "NEW PAGE",
        style: GoogleFonts.poppins(color: Colors.white, fontSize: 24),
      )),
    );
  }
}
