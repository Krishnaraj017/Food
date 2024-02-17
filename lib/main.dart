import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_demo/models/food_item.dart';
import 'package:path_provider/path_provider.dart';
import 'package:food_demo/food_repo/food_repository.dart';
import 'package:food_demo/cubit/food_cubit.dart';
import 'package:food_demo/screens/subscreens/main_log_screens.dart';
import 'package:isar/isar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Open the Isar database and initialize the reminder schema
  await _initialiseIsar();
  runApp(const MyApp());
}
Future<void> _initialiseIsar() async {
  // Get the application documents directory
  final directory = await getApplicationDocumentsDirectory();

  // Open Isar database
  await Isar.open(
    // Pass the reminder schema to the Isar.open method
    [FoodItemSchema],
    directory: directory.path,
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final FoodRepository foodRepository;
 

  @override
  void initState() {
    super.initState();
    // Initialize FoodRepository here
    foodRepository = FoodRepository();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FoodCubit(foodRepository), // Provide FoodRepository to FoodCubit
      child: const MaterialApp(
        home: MainLogScreens(),
      ),
    );
  }
}
