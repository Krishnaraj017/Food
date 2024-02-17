import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class HydrationDashboardScreen extends StatefulWidget {
  const HydrationDashboardScreen({super.key});

  @override
  State<HydrationDashboardScreen> createState() =>
      _HydrationDashboardScreenState();
}

class _HydrationDashboardScreenState extends State<HydrationDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Row(
            children: [
              Icon(
                Icons.food_bank,
                size: 32,
              ),
              Gap(30),
              Text(
                'Meal Tracker',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
          const Gap(10),
          const Text(
            'Nutrition Consumption Tracker',
            style: TextStyle(fontSize: 16),
          ),
          const Gap(40),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFFAFAFA),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 0,
                  color: Color.fromRGBO(4, 4, 4, 0.1),
                  offset: Offset(0, 2),
                ),
              ],
            ),
            width: double.infinity,
            height: 89,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Add or View your\n meal details',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF1EFFD7),
                            Color(0xFF008080),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        child: const Text('add    Now ►',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Gap(10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFFAFAFA),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 0,
                  color: Color.fromRGBO(4, 4, 4, 0.1),
                  offset: Offset(0, 2),
                ),
              ],
            ),
            width: double.infinity,
            height: 89,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Track Your Progress',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF1EFFD7),
                            Color(0xFF008080),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        child: const Text('View Now ►',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFFAFAFA),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 0,
                  color: Color.fromRGBO(4, 4, 4, 0.1),
                  offset: Offset(0, 2),
                ),
              ],
            ),
            width: double.infinity,
            height: 89,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Manage Now',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF1EFFD7),
                            Color(0xFF008080),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        child: const Text('Manage Now ►',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
