import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectSection extends StatefulWidget {
  final double screenWidth;
  const ProjectSection({super.key, required this.screenWidth});

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  //controllers
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double titleFontSize = widget.screenWidth > 800
        ? widget.screenWidth * 0.05
        : widget.screenWidth * 0.07;

    double projectWidth = widget.screenWidth > 1200
        ? widget.screenWidth * 0.2
        : widget.screenWidth > 800
            ? widget.screenWidth * 0.3
            : widget.screenWidth * 0.45;

    double projectHeight = projectWidth;

    double projectNameFontSize = widget.screenWidth > 800
        ? widget.screenWidth * 0.02
        : widget.screenWidth * 0.03;

    double techStackFontSize = widget.screenWidth > 800
        ? widget.screenWidth * 0.013
        : widget.screenWidth * 0.02;

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: widget.screenWidth * .05,
          horizontal: widget.screenWidth > 800
              ? widget.screenWidth * .07
              : widget.screenWidth * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PROJECTS",
            style: GoogleFonts.poppins(
                fontSize: titleFontSize, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: widget.screenWidth * .05,
          ),
          _buildHorizontalScroll(projectWidth, projectHeight,
              projectNameFontSize, techStackFontSize),
        ],
      ),
    );
  }

  Widget _buildHorizontalScroll(double projectWidth, double projectHeight,
      double projectNameFontSize, double techStackFontSize) {
    return SizedBox(
      height: projectHeight + widget.screenWidth * .1,
      child: Scrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _projectItems(
                    'assets/covid.png',
                    'COVID 19 TRACKER',
                    'REACT',
                    projectWidth,
                    projectHeight,
                    projectNameFontSize,
                    techStackFontSize),
                SizedBox(width: widget.screenWidth * .05),
                _projectItems(
                    'assets/todo.png',
                    'TODO APP',
                    'FLUTTER',
                    projectWidth,
                    projectHeight,
                    projectNameFontSize,
                    techStackFontSize),
                SizedBox(width: widget.screenWidth * .05),
                _projectItems(
                    'assets/covid.png',
                    'COVID 19 TRACKER',
                    'REACT',
                    projectWidth,
                    projectHeight,
                    projectNameFontSize,
                    techStackFontSize),
                SizedBox(width: widget.screenWidth * .05),
                _projectItems(
                    'assets/todo.png',
                    'TODO APP',
                    'FLUTTER',
                    projectWidth,
                    projectHeight,
                    projectNameFontSize,
                    techStackFontSize),
                SizedBox(width: widget.screenWidth * .05),
                _projectItems(
                    'assets/covid.png',
                    'COVID 19 TRACKER',
                    'REACT',
                    projectWidth,
                    projectHeight,
                    projectNameFontSize,
                    techStackFontSize),
                SizedBox(width: widget.screenWidth * .05),
                _projectItems(
                    'assets/todo.png',
                    'TODO APP',
                    'FLUTTER',
                    projectWidth,
                    projectHeight,
                    projectNameFontSize,
                    techStackFontSize),
                SizedBox(width: widget.screenWidth * .05)
              ],
            )),
      ),
    );
  }

  Widget _projectItems(
      String imagePath,
      String projectName,
      String techStack,
      double width,
      double height,
      double projectNameFontSize,
      double techStackFontSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.transparent, width: 1)),
        ),
        SizedBox(
          height: widget.screenWidth * 0.025,
        ),
        Text(
          projectName,
          style: TextStyle(
              fontSize: projectNameFontSize, fontWeight: FontWeight.bold),
        ),
        Text(
          techStack,
          style: TextStyle(fontSize: techStackFontSize, color: Colors.grey),
        )
      ],
    );
  }
}
