// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.income,
    required this.blance,
    required this.time,
    required this.press,
  }) : super(key: key);

  final String imagePath;
  final String name;
  final String income;
  final String blance;
  final String time;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
      child: InkWell(
        onTap: press,
        child: Container(
          height: size.height * 1 / 10,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 1), blurRadius: 20, color: Colors.grey),
              ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 55,
                  width: 55,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(imagePath))),
              // SizedBox(
              //   height: 15,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: name,
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                        text: income,
                        style: GoogleFonts.inter(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold)),
                  ]),
                  //
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: blance,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(
                        text: time,
                        style: GoogleFonts.inter(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold)),
                  ]),
                  //
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
