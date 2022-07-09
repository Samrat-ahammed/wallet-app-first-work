// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({
    Key? key,
    required this.text,
    required this.buttonTitle,
    required this.press,
  }) : super(key: key);
  final String text;
  final String buttonTitle;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            text,
            style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          FlatButton(
              highlightColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              color: Colors.white,
              onPressed: press,
              child: Text(
                buttonTitle,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[400]),
              ))
        ],
      ),
    );
  }
}
