import 'package:flutter/material.dart';

import 'package:cfiguin_portfolio/screens/screen_home/components/project_card.dart';

import 'package:cfiguin_portfolio/utils/constants.dart';
import 'package:cfiguin_portfolio/utils/strings.dart';
import 'package:cfiguin_portfolio/utils/responsive.dart';

import 'package:cfiguin_portfolio/models/project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
            child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        project.name,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      subtitle: Text(project.descrp,
                          maxLines: Responsive.isMobileLarge(context) ? 8 : 10,
                          overflow: TextOverflow.ellipsis,
                          style: Responsive.isMobileLarge(context)
                              ? TextStyle(height: 9, color: Constants.bodyColor)
                              : TextStyle(
                                  fontSize: 11, color: Constants.bodyColor)),
                    ),
                  ],
                ))));
  }
}



// return Container(
    //   padding: const EdgeInsets.all(Constants.padding),
    //   color: Constants.cardProjectBg,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text(
    //         project.name,
    //         maxLines: 2,
    //         overflow: TextOverflow.ellipsis,
    //         style: Theme.of(context).textTheme.subtitle2,
    //       ),
    //       Text(
    //         project.descrp,
    //         maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
    //         overflow: TextOverflow.ellipsis,
    //         style: const TextStyle(height: 1.5),
    //       ),
    //     ],
    //   ),
    // );