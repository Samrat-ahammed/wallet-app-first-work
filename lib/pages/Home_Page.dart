// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_6/Morebutton.dart';
import 'package:flutter_application_6/pages/componants/ButtomnavigationBar.dart';
import 'package:flutter_application_6/pages/componants/My_Card.dart';
import 'package:flutter_application_6/pages/componants/Blance.dart';
import 'package:flutter_application_6/pages/componants/Profile.dart';
import 'package:flutter_application_6/utilitis/Trendingbutton.dart';
import 'package:flutter_application_6/utilitis/My_Button.dart';
import 'package:flutter_application_6/utilitis/Trendingbutton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  // Page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBarFb1(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          SingleChildScrollView(
            child: Container(
              // color: Colors.purple,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile
                  // ignore: prefer_const_constructors
                  Profile(
                    image: "assets/images/image.jpg",
                    title: "My Wallet",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Blance(
                    text: "Available Balance",
                    blance: "\$0.00 USD",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  trending_Botton(
                    title: "Pay",
                    press: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                        ),
                        child: Text(
                          "Card(2/3)",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_box_rounded)),
                      )
                    ],
                  )
                  //slid inecator..............
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: size.height * 1 / 3.7,
            // color: Colors.blue,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Mycard(
                  cardName: "Master card",
                  cardImage: "assets/icons/visa.png",
                  cardNumber: "**** **** **** 3960",
                  holdering: "CARD HOLDER",
                  name: "JAMES DENNIS",
                  express: "EXPIRIES",
                  date: "10/12",
                  cv: "CVV",
                  cvCode: "***",
                ),
                Mycard(
                  cardName: "Visa card",
                  cardImage: "assets/icons/visa.png",
                  cardNumber: "**** **** **** 3960",
                  holdering: "CARD HOLDER",
                  name: "JONEE DEAP",
                  express: "EXPIRIES",
                  date: "10/12",
                  cv: "CVV",
                  cvCode: "***",
                ),
                Mycard(
                  cardName: "Rupay Cart",
                  cardImage: "assets/images/master.png",
                  cardNumber: "**** **** **** 3960",
                  holdering: "CARD HOLDER",
                  name: "CARLEI",
                  express: "EXPIRIES",
                  date: "10/12",
                  cv: "CVV",
                  cvCode: "***",
                ),
                Mycard(
                  cardName: "Sopping card",
                  cardImage: "assets/images/master.png",
                  cardNumber: "**** **** **** 3960",
                  holdering: "CARD HOLDER",
                  name: "ALAX",
                  express: "EXPIRIES",
                  date: "10/12",
                  cv: "CVV",
                  cvCode: "***",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: WormEffect(dotHeight: 10, dotWidth: 10),
          ),
          SizedBox(
            height: 10,
          ),
          MoreButton(
            text: "Transaction",
            buttonTitle: "See All",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          Mybutton(
            imagePath: "assets/icons/facebook.png",
            name: "Facebook",
            income: "\n Salary",
            blance: "+\$70000",
            time: "\n 12:45 PM",
            press: () {},
          ),
          Mybutton(
            imagePath: "assets/icons/instagram.png",
            name: "Instagram",
            income: "\n Salary",
            blance: "+\$90000",
            time: "\n 1:45 PM",
            press: () {},
          ),
          Mybutton(
            imagePath: "assets/icons/skype.png",
            name: "Skype",
            income: "\n Salary",
            blance: "+\$30000",
            time: "\n 02:45 PM",
            press: () {},
          ),
          Mybutton(
            imagePath: "assets/icons/whatsapp.png",
            name: "WhatsApp",
            income: "\n Salary",
            blance: "+\$60000",
            time: "\n 13:45 PM",
            press: () {},
          ),
        ]),
      )),
    );
  }
}
