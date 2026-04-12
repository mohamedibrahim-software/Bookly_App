import 'package:bookly_app/core/utils/AppColor.dart';
import 'package:bookly_app/features/cart/presentation/view/cartview.dart';
import 'package:bookly_app/features/favorite/presintation/view/favview.dart';
import 'package:bookly_app/features/home/presentation/view/Homeview.dart';
import 'package:bookly_app/features/search/presentation/view/Searchview.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          [Homeview(), Favview(), Searchview(), Cartview()][index],
          Positioned(
            bottom: 17,
            left: 11,
            right: 11,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.circular(77),
              ),
              child: GNav(
                iconSize: 28,
                color: Colors.white,
                activeColor: kPrimaryColor,

                onTabChange: (value) {
                  index = value;
                  setState(() {});
                },
                tabs: [
                  GButton(icon: Icons.home, text: 'Home'),
                  GButton(icon: Icons.favorite, text: 'Favorite'),
                  GButton(icon: Icons.search, text: 'Search'),
                  GButton(icon: Icons.shopping_cart, text: 'Cart'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
