import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../constants.dart';
import '../detail_screen.dart';



class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: kSecondaryColor,
                ),
                SizedBox(width: 10),
                Text("America Force", style: GoogleFonts.poppins(),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "D749 HAMMER 1PC Gloss Black with Milled Accents",
                          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black54),
                          // style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.w600, color: Colors.black54),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Flat-Spoke",
                          style: GoogleFonts.poppins(fontSize: 15, color: Colors.black54),
                          // style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 15, color: Colors.black54),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SmoothStarRating(
                              borderColor: kPrimaryColor,
                              rating: 4,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("24 Reviews", style: GoogleFonts.poppins(),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ClipPath(
                    clipper: PricerCliper(),
                    child: Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      height: 66,
                      width: 65,
                      color: kPrimaryColor,
                      child: Text(
                        "\$455",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(height: 2.0),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/icons/bag.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Order Now",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}