import 'package:flutter/material.dart';

// import '../../../../core/utils/constants.dart';
import '../../../buttomnavbar/bottomnavbar.dart';
import 'app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomeAppBar(),
        Expanded(child: ListViewItem()),
      ],
    );
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // المحتوى هنا
      ],
    );
  }
}
