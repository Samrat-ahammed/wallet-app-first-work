// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class trending_Botton extends StatelessWidget {
  const trending_Botton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final MaterialStateProperty<Size?>? minimumSize;
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size.height * 1 / 13,
            width: size.width * .42,
            child: ElevatedButton.icon(
                onPressed: press,
                icon: Icon(Icons.trending_up),
                label: Text(
                  "Add Fund",
                  style: GoogleFonts.inter(color: Colors.black, fontSize: 24),
                )),
          ),
          Spacer(),
          Container(
            height: size.height * 1 / 13,
            width: size.width * .42,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.trending_down,
                color: Colors.black,
              ),
              label: Text(
                "Transfer",
                style: GoogleFonts.inter(color: Colors.black, fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
