import 'package:flutter/material.dart';
import 'package:portfolio_gdg/widgets/about_section.dart';
import 'package:portfolio_gdg/widgets/nav_bar.dart';
import 'package:portfolio_gdg/widgets/project_section.dart';

import 'widgets/footer_section.dart';
import 'widgets/image_and_skills.dart';
import 'widgets/skills_section.dart';
import 'widgets/title_section.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        alignment: 0.1,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            return SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  NavBar(
                    screenWidth: screenWidth,
                    onNavItemTap: (String section) {
                      switch (section) {
                        case 'About me':
                          _scrollToSection(aboutKey);
                          break;
                        case 'Skills':
                          _scrollToSection(skillsKey);
                          break;
                        case 'Projects':
                          _scrollToSection(projectsKey);
                          break;
                        case 'CONTACT ME':
                          _scrollToSection(contactKey);
                          break;
                      }
                    },
                  ),
                  TitleSection(screenWidth: screenWidth),
                  ImageAndSkills(screenWidth: screenWidth),
                  AboutSection(screenWidth: screenWidth, key: aboutKey),
                  SkillsSection(screenWidth: screenWidth, key: skillsKey),
                  ProjectsSection(screenWidth: screenWidth, key: projectsKey),
                  FooterSection(screenWidth: screenWidth, key: contactKey),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
