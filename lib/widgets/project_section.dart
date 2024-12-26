import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsSection extends StatefulWidget {
  final double screenWidth;
  const ProjectsSection({super.key, required this.screenWidth});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
        vertical: widget.screenWidth * 0.05,
        horizontal: widget.screenWidth > 800
            ? widget.screenWidth * 0.07
            : widget.screenWidth * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PROJECTS',
            style: GoogleFonts.poppins(
              fontSize: titleFontSize,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: widget.screenWidth * 0.05),
          _buildHorizontalScroll(projectWidth, projectHeight,
              projectNameFontSize, techStackFontSize),
        ],
      ),
    );
  }

  Widget _buildHorizontalScroll(double projectWidth, double projectHeight,
      double projectNameFontSize, double techStackFontSize) {
    return SizedBox(
      height: projectHeight + widget.screenWidth * 0.1,
      child: Scrollbar(
        thumbVisibility: true,
        controller: _scrollController, // Attach the ScrollController
        child: SingleChildScrollView(
          controller: _scrollController, // Attach here as well
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _projectItem(
                  'assets/todo.png',
                  'TODO APP',
                  'FLUTTER',
                  projectWidth,
                  projectHeight,
                  projectNameFontSize,
                  techStackFontSize),
              SizedBox(width: widget.screenWidth * 0.05),
              _projectItem(
                  'assets/covid.png',
                  'COVID 19 TRACKER',
                  'REACT',
                  projectWidth,
                  projectHeight,
                  projectNameFontSize,
                  techStackFontSize),
              SizedBox(width: widget.screenWidth * 0.05),
              SizedBox(width: widget.screenWidth * 0.05),
              _projectItem(
                  'assets/covid.png',
                  'COVID 19 TRACKER',
                  'REACT',
                  projectWidth,
                  projectHeight,
                  projectNameFontSize,
                  techStackFontSize),
              SizedBox(width: widget.screenWidth * 0.05),
            ],
          ),
        ),
      ),
    );
  }

  Widget _projectItem(
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
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.transparent,
              width: 2,
            ),
          ),
        ),
        SizedBox(height: widget.screenWidth * 0.025),
        Text(
          projectName,
          style: TextStyle(
            fontSize: projectNameFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          techStack,
          style: TextStyle(
            fontSize: techStackFontSize,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
