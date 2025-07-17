import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});
  final String _heartTouchingMessage = "PEOPLE FLY AWAY BUT NOT FROM YOU";

  @override
  Widget build(BuildContext context) {
    return Column
    (
      children: 
      [
        Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Text
          (
            _heartTouchingMessage,
            style: TextStyle
            (
              fontSize: 17,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }
}