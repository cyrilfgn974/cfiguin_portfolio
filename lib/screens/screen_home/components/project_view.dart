import 'package:flutter/material.dart';

import 'package:cfiguin_portfolio/models/project.dart';

import 'package:cfiguin_portfolio/screens/screen_home/components/project_grid_view.dart';

import 'package:cfiguin_portfolio/utils/constants.dart';
import 'package:cfiguin_portfolio/utils/strings.dart';
import 'package:cfiguin_portfolio/utils/responsive.dart';

import 'package:http/http.dart' as http;

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Project>>(
        future: fetchProjects(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
            return const Center(
              child: Text("Error"),
            );
          } else if (snapshot.hasData) {
            print(snapshot.data);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.projectTitle,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: Constants.padding),
                Responsive(
                    mobile: ProjectsGridView(
                        crossAxisCount: 1,
                        childAspectRatio: 1.7,
                        projects: snapshot.data!),
                    mobileLarge: ProjectsGridView(
                        crossAxisCount: 2, projects: snapshot.data!),
                    tablet: ProjectsGridView(
                        childAspectRatio: 1.1, projects: snapshot.data!),
                    desktop: ProjectsGridView(projects: snapshot.data!))
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
