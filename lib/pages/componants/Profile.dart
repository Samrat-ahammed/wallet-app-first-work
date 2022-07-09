import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final image;
  final title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: 50,
                // padding: EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.circular(12)
                    ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Text(
            title,
            style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search
                  // color: Colors.white,
                  )),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
    );
  }
}
