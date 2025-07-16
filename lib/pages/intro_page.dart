import 'package:e_commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  //Variable
  final String _title = "Just DO It";
  final String _subTitle = "Best shoes with premium quality";

  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column
        (
          children: 
          [
            //LOGO
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset("lib/assets/logo/nikeLogo.png",
                height: 240,
              ),
            ),
            //TITLE
            Text
            (
              _title,
              style: TextStyle
              (
                fontWeight: FontWeight.bold,
                fontSize: 40
              
              ),
            ),
            //SUBTITLE
            Padding(
              padding: const EdgeInsets.all(35),
              child: Center(
                child: Text
              (
                _subTitle,
                style: TextStyle
                (
                  fontSize: 16
                
                ),
              ),
              ),
            ),
        
            //START NOW BUTTON
            GestureDetector
            (
              onTap: () => Navigator.push
              (
                context, MaterialPageRoute
                (
                  builder: (context) => HomePage(),
                ),
              ),
              child: Container
              (
                height: 100,
                width: 300,
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[900],
              
                ),
                padding: EdgeInsets.all(25),
              
                child: Center(
                  child: Text(
                    "Shop Now",
                  
                    style: TextStyle
                    (
                      wordSpacing: 2,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    
                    
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}