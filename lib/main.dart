import 'package:flutter/material.dart';
import 'package:portfolio_gdg/widgets/about_section.dart';
import 'package:portfolio_gdg/widgets/image_and_skills.dart';
import 'package:portfolio_gdg/widgets/nav_bar.dart';
import 'package:portfolio_gdg/widgets/project_section.dart';
import 'package:portfolio_gdg/widgets/skills_section.dart';
import 'package:portfolio_gdg/widgets/title_section.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  final ScrollController _scrollController = ScrollController();
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
                    ),
                    TitleSection(
                      screenWidth: screenWidth,
                    ),
                    ImageAndSkills(
                      screenWidth: screenWidth,
                    ),
                    AboutSection(
                      screenWidth: screenWidth,
                    ),
                    SkillsSection(screenWidth: screenWidth),
                    ProjectSection(screenWidth: screenWidth),
                  ],
                ));
          },
        ),
      ),
    );
  }
}
