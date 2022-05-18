import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';


class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Offers & Discounts",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, color: kTextColor),
          ),
          Container(
            width: double.infinity,
            height: 165,
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/discount.jpg",
                ),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 114, 206, 100).withOpacity(0.7),
                    kPrimaryColor.withOpacity(0.7),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 80,
                        width: 80,
                        color: Colors.transparent,
                        child:
                            SvgPicture.asset("assets/icons/avant.svg"),
                      ),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: "Get Discount of \n",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: "30%\n",
                              style: GoogleFonts.poppins(
                                fontSize: 43,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "at McDonald's on your firsts order & instants cashback",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
