import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_demo/cubit/food_cubit.dart';
import 'package:food_demo/models/food_item.dart';

class FoodCheckbox extends StatelessWidget {
  final FoodItem foodItem;

  const FoodCheckbox({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(foodItem.name),
      trailing: Checkbox(
        value: foodItem.isSelected,
        activeColor:
            Colors.green, // Set the checkbox color to green when selected
        onChanged: (newValue) {
          print(newValue);
          context.read<FoodCubit>().toggleFoodSelection(foodItem);

          // Implement logic to handle checkbox changes
        },
      ),
    );
  }
}
