import 'package:cfiguin_portfolio/screens/screen_home/components/project_card.dart';
import 'package:flutter/material.dart';

import 'package:cfiguin_portfolio/models/project.dart';

import 'package:cfiguin_portfolio/screens/screen_home/components/project_grid_view.dart';

import 'package:cfiguin_portfolio/utils/constants.dart';
import 'package:cfiguin_portfolio/utils/strings.dart';
import 'package:cfiguin_portfolio/utils/responsive.dart';

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView(
      {Key? key,
      this.crossAxisCount = 3,
      this.childAspectRatio = 1.3,
      required this.projects})
      : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: Constants.padding,
        mainAxisSpacing: Constants.padding,
      ),
      itemBuilder: (context, index) => ProjectCard(project: projects[index]),
    );
  }
}
