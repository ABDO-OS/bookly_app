import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import 'app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [CustomeAppBar(), ListViewItem()]);
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.5,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
          child: Image.asset(AssetsData.test),
        ),
      ),
    );
  }
}
