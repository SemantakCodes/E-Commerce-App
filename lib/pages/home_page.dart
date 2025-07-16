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
  final String _home = "Home";
  final String _info = "Info";
  final String _suprise = "Suprise";
  final String _logOut = "Log Out";


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
      drawer: Drawer
      (
        backgroundColor: Colors.grey[900],
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: 
          [
            Column(
              children: [
                DrawerHeader
                (
                  child: Image.asset
                  (
                    "lib/assets/logo/nikeLogo.png", 
                    color: Colors.white,
                  ),
                ),
                
                Padding
                (
                  padding: const EdgeInsets.symmetric
                  (
                    horizontal: 25.0
                  ),
                  child: Divider
                  (
                    color: Colors.grey[800],
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListTile
                  (
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text(_home, style: TextStyle(color: Colors.white)),
                  ),
                ),
                
                
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListTile
                  (
                    leading: Icon(Icons.info_outline_rounded, color: Colors.white,),
                    title: Text(_info, style: TextStyle(color: Colors.white)),
                  ),
                ),
                
                
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListTile
                  (
                    leading: Icon(Icons.yard_rounded, color: Colors.white,),
                    title: Text(_suprise, style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25.0 ),
              child: ListTile
                  (
                    leading: Icon(Icons.logout_rounded, color: Colors.white,),
                    title: Text(_logOut, style: TextStyle(color: Colors.white),)
                    ,
                  ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      //APP BAR
      appBar: AppBar
      (
        leading: Builder
        (
          builder: (context) => IconButton
        (
          onPressed: () 
          {
            Scaffold.of(context).openDrawer();
          }, 
          icon: const Icon
          (
            Icons.menu, 
            color: Colors.black,
          ),
        ),
        ), 
        
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        
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