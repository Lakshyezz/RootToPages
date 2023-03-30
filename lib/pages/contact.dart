import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nudge_task/pages/newPage.dart';

class ContactPage extends StatelessWidget {
  static final namedRoute = "ContactPageRoute";
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4D455D),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Center(
            child: Text(
          "CONTACT PAGE",
          style: GoogleFonts.poppins(),
        )),
        backgroundColor: Color(0xFF4D455D),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, NewPage.namedRoute);
            },
            child: Container(
              // margin: const EdgeInsets.all(20),
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                  color: Color(0xFFE96479).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(16)),
              // child: Column(
              //   children: [
              //     // Text(
              //     //   "Modal",
              //     //   style: GoogleFonts.poppins(
              //     //       color: Colors.white,
              //     //       fontSize: 24,
              //     //       decoration: TextDecoration.none),
              //     // ),
              //     Expanded(
              //       child: Container(),
              //     ),
              //   ],
              // )
            ),
          ),
        ),
      ),
    );
  }
}
