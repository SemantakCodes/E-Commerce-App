import 'package:e_commerce_app/components/hot_pics.dart';
import 'package:e_commerce_app/components/message.dart';
import 'package:e_commerce_app/components/search.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column
      (
        children: 
        [
          //Search bar
          Search(),

          const SizedBox(height: 12,),
          //message
          Message(),

          const SizedBox(height: 12,),

          HotPics(),
        ],
      ),
    );
  }
}