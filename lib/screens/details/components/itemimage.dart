import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../constants.dart';


class ItemImage extends StatelessWidget {
  final String imgSrc;
  const ItemImage({
    Key? key,
    required this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSrc,
      width: size.width * 0.75,
      height: size.height * 0.30,
      fit: BoxFit.cover,
    );
  }
}