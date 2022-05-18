import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tire_shop_ui/main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/bottom_nav_bar.dart';
import '../../constants.dart';
import 'components/body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildHomeAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            color: kPrimaryColor,
          ),
          onPressed: () {},
        ),
      ),
      title: RichText(
        text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "Auto",
                style: GoogleFonts.poppins(
                  color: kSecondaryColor,
                ),
              ),
              TextSpan(
                text: "Wheel",
                style: GoogleFonts.poppins(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/notification.svg"),
          ),
        ),
      ],
    );
  }
}
