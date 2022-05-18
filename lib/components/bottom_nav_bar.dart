import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 33,
              color: Color(0xFF6DAED9).withOpacity(0.11),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/home.svg"),
            ),
          ),
           SizedBox(
            height: 40,
            width: 40,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/tire.svg"),
            ),
          ),
           SizedBox(
            height: 40,
            width: 40,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/compas.svg"),
            ),
          ),
           SizedBox(
            height: 40,
            width: 40,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/person.svg"),
            ),
          ),
          
        ],
      ),
    );
  }
}
