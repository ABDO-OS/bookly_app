import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'core/utils/constants.dart';
import 'features/splash/presentation/views/splach_view.dart';

void main() {
  runApp(const Bookelyapp());
}

class Bookelyapp extends StatelessWidget {
  const Bookelyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorsData.kmaincolor,
      ),
      home: SplachView(),
    );
  }
}
