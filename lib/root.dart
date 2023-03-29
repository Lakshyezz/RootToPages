import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nudge_task/pages/contact.dart';
import 'package:nudge_task/pages/home.dart';

class Root extends StatelessWidget {
  static final namedRoute = "RootRoute";
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 250),
        height: 200,
        width: 300,
        decoration: BoxDecoration(
            color: Color(0xFF4D455D), borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              "Control From Here",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  decoration: TextDecoration.none),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                color: Color(0xFF4D455D),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ContactPage.namedRoute);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color(0xFFE96479),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        "Banner",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 6),
                  height: 80,
                  child: RawMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.namedRoute);
                    },
                    elevation: 2.0,
                    fillColor: Color(0xFFF5E9CF),
                    child: Text(
                      "Launcher",
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Color(0xFF4D455D)),
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                )
                // Container(
                //   height: 60,
                //   width: 60,
                //   decoration: BoxDecoration(color: Color(0xFFF5E9CF)),
                // )
              ],
            )
          ],
        ));
  }
}
