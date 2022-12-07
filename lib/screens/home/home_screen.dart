import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../screens/home/components/deployed_using.dart';
import '../../screens/home/components/footer_links.dart';
import '../../screens/home/components/system_and_tools.dart';
import '../../screens/home/components/techs_used.dart';

import 'components/description.dart';
import 'components/features.dart';
import 'components/hero_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  static String screenId = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Hero(widget: widget),
          const Description(),
          const Features(),
          TechsUsed(),
          const SystemAndTools(),
          const DeployedUsing(),
          const FooterLinks(),
        ],
      ),
    );
  }
}

class Hero extends StatelessWidget {
  const Hero({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final HomeScreen widget;

  @override
  Widget build(BuildContext context) {
    return HeroSection(
      widget: widget,
      title: appName,
    );
  }
}
