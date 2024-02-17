import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_demo/cubit/food_cubit.dart';
import 'package:food_demo/cubit/food_state.dart';
import 'package:food_demo/models/food_item.dart';
import 'package:food_demo/screens/food_checkbox.dart';
import 'package:food_demo/screens/selected_food_screen.dart'; // Import the SelectedFoodScreen

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Items'),
      ),
      body: BlocBuilder<FoodCubit, FoodState>(
        builder: (context, state) {
          if (state is FoodLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FoodLoaded) {
            return ListView.builder(
              itemCount: state.foodItems.length,
              itemBuilder: (context, index) {
                final foodItem = state.foodItems[index];
                return FoodCheckbox(foodItem: foodItem);
              },
            );
          } else if (state is FoodError) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return const Center(
              child: Text('Unknown state'),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<FoodCubit>().fetchFood();
        },
        child: const Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // Add a button for navigating to the SelectedFoodScreen
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectedFoodScreen()),
            );
          },
          child: Text('View Selected Food'),
        ),
      ],
    );
  }
}
