import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  final double screenWidth;
  final Function(String) onNavItemTap;

  const NavBar(
      {super.key, required this.screenWidth, required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    double paddingHorizontal = screenWidth > 1200
        ? screenWidth * 0.033
        : screenWidth > 800
            ? screenWidth * 0.025
            : screenWidth * 0.0125;

    double fontSize =
        screenWidth > 800 ? screenWidth * 0.018 : screenWidth * 0.04;

    bool showNavItems = screenWidth > 800;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenWidth * 0.015, horizontal: paddingHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '<HARIOM/>',
                style: GoogleFonts.poppins(
                  fontSize: screenWidth > 800
                      ? screenWidth * 0.025
                      : screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (showNavItems)
                Row(
                  children: [
                    _navItem('About me', fontSize),
                    _navItem('Skills', fontSize),
                    _navItem('Projects', fontSize),
                    _navItem('CONTACT ME', fontSize),
                  ],
                ),
            ],
          ),
        ),
        Divider(
          height: .5,
          color: Colors.black,
          thickness: 10,
        )
      ],
    );
  }

  Widget _navItem(String text, double fontSize) {
    return InkWell(
      onTap: () => onNavItemTap(text),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          text,
          style: GoogleFonts.poppins(
              fontSize: fontSize, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
