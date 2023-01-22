import 'package:flutter/material.dart';

import 'components/stat_graph/stat_graph.dart';

class ProjectStats extends StatelessWidget {
  const ProjectStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tasks Todos Issues',
          style: TextStyle(color: Colors.black87),
        ),
        SizedBox(
          height: 12.0,
        ),
        StatGraph(),
      ],
    );
  }
}