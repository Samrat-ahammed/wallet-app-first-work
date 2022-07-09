import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blance extends StatelessWidget {
  const Blance({
    Key? key,
    required this.text,
    required this.blance,
  }) : super(key: key);
  final text;
  final blance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: GoogleFonts.inter(fontSize: 20, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              blance,
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
