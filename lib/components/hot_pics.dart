import 'package:e_commerce_app/Tiles/shoe_tile.dart';
import 'package:flutter/material.dart';

class HotPics extends StatelessWidget {
  //variable
  final String _hotPics = "Hot Pics 🔥";
  final String _seeAll = "See All";

  const HotPics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding
        (
          padding: const EdgeInsets.all(25.0),
          child: Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: 
            [
              Text
              (
                _hotPics,
                style: TextStyle
                (
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text
              (
                _seeAll,
                style: TextStyle
                (
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              
            ],
          ),
        ),
        const SizedBox(height: 12,),

        Expanded
        (
          child: ListView.builder
          (
            itemBuilder: (context, index) {
              return ShoesTile();
            }
          ),
        ),
      ],
    );
  }
}