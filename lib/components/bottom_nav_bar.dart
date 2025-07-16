import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  //variables
  final String _homeButtonText = "Home";
  final String _cartButtonText = "Cart";

  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container
    (
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav
      (
        color: Colors.grey[600],
        activeColor: Colors.grey[900],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 18,
        onTabChange: (value) => onTabChange!(value),
        tabs: 
        [
          GButton
          (
            icon: Icons.home,
            text: _homeButtonText,
          ),
          GButton
          (
            icon: Icons.shopping_bag_rounded,
            text: _cartButtonText,
          ),
        ]
      )
    );
  }
}