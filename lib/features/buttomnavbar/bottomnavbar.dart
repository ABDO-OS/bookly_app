import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 95,
      width: 20,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: GNav(
          gap: 8,
          backgroundColor: Colors.black,
          activeColor: Colors.white,
          color: Colors.white,
          tabBackgroundColor: const Color.fromARGB(255, 78, 78, 78),
          padding: const EdgeInsets.all(16),
          tabs: const [
            GButton(icon: Icons.home, text: "Home"),
            GButton(icon: Icons.favorite_border, text: "Likes"),
            GButton(icon: Icons.search, text: "Search"),
            GButton(icon: Icons.settings, text: "Settings"),
          ],
        ),
      ),
    );
  }
}
