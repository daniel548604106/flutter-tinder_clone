import 'package:flutter/material.dart';

import '../theme/colors.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: getFooter(),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: 120,
        decoration: const BoxDecoration(
          color: white,
        ),
        child: Row(children: []));
  }
}
