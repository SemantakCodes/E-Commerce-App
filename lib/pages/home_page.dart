import 'package:e_commerce_app/components/bottom_nav_bar.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //variables
  final String _appBarTitle = "Shoes";
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;


  //LISTS

  final List<Widget> _pages = 
  [
    // SHOP PAGE
    const ShopPage(),

    // CART PAGE
    const CartPage(),
  ];

  //methods
  //when user taps on tab it changes the index
  void navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Colors.grey[300],
      //APP BAR
      appBar: AppBar
      (
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Text
        (
          _appBarTitle,
        ),
        titleTextStyle: TextStyle
        (
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 35
        ),
      ),


      //NAV BARR
      //using google's nav bar here

      

      bottomNavigationBar: BottomNavBar
      (
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}