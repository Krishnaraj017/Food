import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_demo/cubit/food_cubit.dart';
import 'package:food_demo/cubit/food_state.dart';
import 'package:food_demo/models/food_item.dart';

class SelectedFoodScreen extends StatelessWidget {
  const SelectedFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int totQuant = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Food Items'),
      ),
      body: BlocBuilder<FoodCubit, FoodState>(
        builder: (context, state) {
          if (state is FoodLoaded) {
            final selectedFoodItems = state.foodItems
                .where((foodItem) => foodItem.isSelected)
                .toList();

            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: selectedFoodItems.length,
                    itemBuilder: (context, index) {
                      final foodItem = selectedFoodItems[index];
                      return ListTile(
                        trailing: IconButton(
                          onPressed: () {
                            foodItem.totQuantity += 1;
                          },
                          icon: const Icon(Icons.add),
                        ),
                        title: Row(
                          children: [
                            Expanded(
                              child: Text(
                                foodItem.name,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(
                            'Calories: ${foodItem.calories.toString()}, totQuantity: ${foodItem.totQuantity.toString()}'),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    for (final foodItem in selectedFoodItems) {
                      print(
                          'Name: ${foodItem.name}, Calories: ${foodItem.calories}, Total Quantity: ${foodItem.totQuantity}');
                      context
                          .read<FoodCubit>()
                          .addSelectedFoodItems(selectedFoodItems);
                      // You can process each food item here as per your requirement
                    }
                  },
                  child: Text('confirm'),
                )
              ],
            );
          } else {
            return const Center(
              child: Text('No food items selected.'),
            );
          }
        },
      ),
    );
  }
}
