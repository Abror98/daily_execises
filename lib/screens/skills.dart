import 'package:flutter/material.dart';
import 'package:flutter_portfolie/components/sliver_bar.dart';
import 'package:flutter_portfolie/resources/skills_list.dart';


class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverBar(
              titleText: 'Skills',
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        skills[index]['logo'],
                      ),
                      Text(
                        skills[index]['title'],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Raleway',
                        ),
                      ),
                    ],
                  );
                },
                childCount: skills.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
