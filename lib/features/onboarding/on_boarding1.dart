import 'package:ecommerce_mobile/features/onboarding/on_boarding2.dart';
import 'package:ecommerce_mobile/preferences/assets.dart';
import 'package:ecommerce_mobile/preferences/color.dart';
import 'package:flutter/material.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 65,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff15256E),
                image: DecorationImage(
                  image: AssetImage(MainAssets.firstOnBoarding),
                  alignment: Alignment(0, 0.6),
                  scale: 1,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 35,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
              decoration: BoxDecoration(color: Color(0xffFFFFFF)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Get The most delicious ramen in the world',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Get a taste of authentic Japanese ramen!\n Hot, hearty, and full of flavor.Order your bowl\n today!',
                  ),
                  SizedBox(height: 34),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecOnBoarding(),
                        ),
                      );
                    },
                    child: Text('Lets Continue'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
