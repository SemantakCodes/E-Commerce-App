import 'package:flutter/material.dart';

class HotPics extends StatelessWidget {
  //variable
  final String _hotPics = "Hot Pics 🔥";
  final String _seeAll = "See All";

  const HotPics({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row
      (
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
    );
  }
}