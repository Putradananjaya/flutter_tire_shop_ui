import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../details/detail_screen.dart';
import 'itemcard.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            title: "Flat-Spoke",
            shopName: "American Force",
            svgSrc: "assets/icons/flat_spoke.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            title: "Viral-Spoke",
            shopName: "Avant Grade",
            svgSrc: "assets/icons/viral_spoke.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            title: "Flat-Spoke",
            shopName: "American Force",
            svgSrc: "assets/icons/flat_spoke.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
