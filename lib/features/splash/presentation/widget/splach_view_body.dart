import 'package:booklyapp/features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/constants.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initslidinganimation();
    transation();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition(
          position: slidingAnimation,
          child: Image.asset(AssetsData.logo),
        ),
        const SizedBox(height: 5),
        const Text("read free books", textAlign: TextAlign.center),
      ],
    );
  }

  void transation() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => const HomeView(), transition: Transition.upToDown);
    });
  }

  void initslidinganimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, -2), end: Offset.zero).animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        );

    animationController.forward();
  }
}
