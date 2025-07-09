import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: AppBar());
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 20),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 24)),
        ],
      ),
    );
  }
}
