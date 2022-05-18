import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import 'categoryitem.dart';


class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Truck/SUV",
            isActive: true,
          ),
          CategoryItem(
            title: "Racing",
            isActive: false,
          ),
          CategoryItem(
            title: "Off-Road",
            isActive: false,
          ),
          CategoryItem(
            title: "Luxury",
            isActive: false,
          ),
          CategoryItem(
            title: "Truck/SUV",
            isActive: false,
          ),
        ],
      ),
    );
  }
}
