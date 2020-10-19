import 'package:flutter/material.dart';

import '../components/sliver_bar.dart';
import '../components/sliver_card.dart';
import '../resources/projects_list.dart';
import 'cert-viewer.dart';


class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverBar(
            titleText: 'Projects',
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SliverCard(
                  routeTo: CertViewer(
                    file: projects[index]['main_image'],
                    text: projects[index]['project_name'],
                  ),
                  imagePath: projects[index]['main_image'],
                  titleText: projects[index]['project_name'],
                  context: context,
                );
              },
              childCount: projects.length,
            ),
          )
        ],
      ),
    );
  }
}
