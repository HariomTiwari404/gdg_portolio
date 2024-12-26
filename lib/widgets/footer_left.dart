import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterLeft extends StatelessWidget {
  final double screenWidth;
  const FooterLeft({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double titleFontSize =
        screenWidth > 800 ? screenWidth * 0.03 : screenWidth * 0.05;
    double textFontSize =
        screenWidth > 800 ? screenWidth * 0.014 : screenWidth * 0.03;
    double iconSize =
        screenWidth > 800 ? screenWidth * 0.04 : screenWidth * 0.06;
    double iconSpacing = screenWidth * 0.02;

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: screenWidth * 0.8),
      child: Column(
        crossAxisAlignment: screenWidth > 800
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Text(
            "Let's work together",
            style: GoogleFonts.poppins(
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
            ),
            textAlign: screenWidth > 800 ? TextAlign.left : TextAlign.center,
          ),
          SizedBox(height: screenWidth * 0.03),
          Text(
            "I'm open to collaboration and new projects. Reach out if you have something exciting to work on!",
            style: TextStyle(fontSize: textFontSize, color: Colors.grey[600]),
            textAlign: screenWidth > 800 ? TextAlign.left : TextAlign.center,
          ),
          SizedBox(height: screenWidth * 0.05),
          Wrap(
            alignment:
                screenWidth > 800 ? WrapAlignment.start : WrapAlignment.center,
            spacing: iconSpacing,
            runSpacing: screenWidth * 0.015,
            children: [
              FlutterSocialButton(
                iconSize: iconSize,
                onTap: () =>
                    _launchUrl('https://www.instagram.com/swarajtiwari_/'),
                mini: true,
                buttonType: ButtonType.instagram,
              ),
              FlutterSocialButton(
                iconSize: iconSize,
                onTap: () => _launchUrl(
                    'https://www.facebook.com/profile.php?id=100069504969976'),
                mini: true,
                buttonType: ButtonType.facebook,
              ),
              FlutterSocialButton(
                iconSize: iconSize,
                onTap: () => _launchUrl('https://x.com/HariomTiwari404'),
                mini: true,
                buttonType: ButtonType.twitter,
              ),
              FlutterSocialButton(
                iconSize: iconSize,
                onTap: () =>
                    _launchUrl('https://www.linkedin.com/in/hariomtiwari404/'),
                mini: true,
                buttonType: ButtonType.linkedin,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }
}
