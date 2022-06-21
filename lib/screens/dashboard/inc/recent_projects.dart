import 'package:flutter/material.dart';
import 'package:stasks/constants.dart';
import 'package:stasks/screens/dashboard/inc/recent_projects_item.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: stDefaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recent Projects",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: stDefaultSpace * 0.5,
            ),
            RecentProjectItem(
              color: Colors.blue,
              title: "About low elo teemo",
              press: () {
                print("About low elo teemo");
              },
              date: "19 Jun, 2022",
            ),
            RecentProjectItem(
              color: Colors.red,
              title: "Project alpha zero",
              press: () {
                print("Project alpha zero");
              },
              date: "19 Jun, 2022",
            ),
            RecentProjectItem(
              color: Colors.yellow,
              title: "Lorem alpha zero",
              press: () {
                print("Kitkat alpha zero");
              },
              date: "10 Jun, 2021",
            ),
          ],
        ),
      ),
    );
  }
}