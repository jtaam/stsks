import 'package:flutter/material.dart';

import '../../../../../settings/constants.dart';
import 'components/assignee/assignees_list.dart';
import 'components/budget/budget.dart';
import 'components/communicate/communicate.dart';
import 'components/p_date/p_date.dart';
import 'components/meta/meta.dart';
import 'components/source/sources.dart';

class ProjectInfo extends StatelessWidget {
  ProjectInfo(
      {required this.title,
      required this.description,
      required this.image,
      required this.status,
      Key? key})
      : super(key: key);
  String title;
  String description;
  String image;
  String status;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: appDefaultSpace),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Meta(
                title: title,
                description: description,
                image: image,
                status: status),
            Budget(),
            AssigneesList(),
            Communicate(),
            Sources(),
            PDate(),
          ],
        ),
      ),
    );
  }
}
