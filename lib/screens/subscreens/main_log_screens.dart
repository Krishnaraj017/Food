import 'package:flutter/material.dart';
import 'package:food_demo/screens/food_screen.dart';
import 'package:gap/gap.dart';

class MainLogScreens extends StatefulWidget {
  const MainLogScreens({Key? key}) : super(key: key);

  @override
  _MainLogScreensState createState() => _MainLogScreensState();
}

class _MainLogScreensState extends State<MainLogScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
                children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const FoodScreen()));
            },
            child: Center(
              child: Container(
                width: 165,
                height: 41,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF1EFFD6), Color(0xFF008080)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Row(
                  children: [
                    Gap(17),
                    Text('Enter Meal',
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                    Gap(20),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
                ],
              ),
        ));
  }
}
