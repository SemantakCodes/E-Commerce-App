import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  final String _searchText = "Search";

  @override
  Widget build(BuildContext context) {
    return Column
    (
      children: 
      [
        Container
        (
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration
          (
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15),
          ),

          child: Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: 
            [
              Text
              (
                _searchText,
                style: TextStyle
                (
                  fontSize: 23,
                  color: Colors.grey[400],
                ),
              ),
              Icon
              (
                color: Colors.black,
                Icons.search_rounded
              ),
            ],
          ),
        ),
      ],
    );
  }
}