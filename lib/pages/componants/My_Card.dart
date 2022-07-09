// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mycard extends StatelessWidget {
  const Mycard({
    Key? key,
    required this.cardName,
    required this.cardImage,
    required this.cardNumber,
    required this.holdering,
    required this.name,
    required this.express,
    required this.date,
    required this.cv,
    required this.cvCode,
  }) : super(key: key);

  final String cardName;
  final String cardImage;
  final String cardNumber;
  final String holdering;
  final String name;
  final String express;
  final String date;
  final String cv;
  final String cvCode;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.blue[300], borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 10,
            // ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Image.asset(
                  cardImage,
                  fit: BoxFit.cover,
                  height: 10,
                  width: 30,
                  alignment: Alignment.topRight,
                ),
              ],
            ),
            Spacer(),
            Text(
              cardNumber,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey[800]),
            ),

            Spacer(),

            // card Number
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: holdering,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                    TextSpan(
                        text: '\n\n' + name,
                        style: GoogleFonts.inter(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ]),
                  //
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: express,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                    TextSpan(
                        text: '\n\n' + date,
                        style: GoogleFonts.inter(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ]),
                  //
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: cv,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                    TextSpan(
                        text: '\n\n' + cvCode,
                        style: GoogleFonts.inter(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ]),
                  //
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
