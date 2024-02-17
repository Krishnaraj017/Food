import 'package:bloc/bloc.dart';
import 'package:food_demo/food_repo/food_repository.dart';
import 'package:food_demo/models/food_item.dart';
import 'package:isar/isar.dart';

import 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  final FoodRepository foodRepository;
  final Isar _isar = Isar.getInstance()!;

  FoodCubit(this.foodRepository) : super(FoodInitial());

  Future<void> fetchFood() async {
    emit(FoodLoading());
    try {
      final foodItems = await foodRepository.fetchFoodItems();
      emit(FoodLoaded(foodItems));
    } catch (e) {
      emit(FoodError('Failed to fetch food items: $e'));
    }
  }

  void toggleFoodSelection(FoodItem foodItem) {
    foodItem.isSelected = !foodItem.isSelected;
    emit(
        FoodLoaded((state as FoodLoaded).foodItems)); // Emit updated food items
  }

  void updateQuantity(FoodItem item, int delta) {
    final foodItems = (state as FoodLoaded).foodItems;
    final index = foodItems.indexWhere((food) => food.foodid == item.foodid);
    if (index != -1) {
      final updatedFoodItems = List<FoodItem>.from(foodItems);
      updatedFoodItems[index].totQuantity += delta;
      print(updatedFoodItems);

      emit(FoodLoaded(updatedFoodItems));
    }
  }

  // void addFood({
  //   required String foodid,
  //   required String name,
  //   required int calories,
  //   required int proteins,
  //   required int carbohydrates,
  //   required int fats,
  //   required String catogory,
  //   required String quantity,
  //   required int totQuantity,
  // }) async {
  //   final food = FoodItem(
  //       foodid: foodid,
  //       name: name,
  //       calories: calories,
  //       proteins: proteins,
  //       carbohydrates: carbohydrates,
  //       fats: fats,
  //       catogory: catogory,
  //       quantity: quantity);
  //   _isar.writeTxn(() => _isar.foodItems.put(food));
  // }
  void addSelectedFoodItems(List<FoodItem> selectedFoodItems) {
    for (final foodItem in selectedFoodItems) {
      // Add each selected food item to the database
      addFood(
        foodItem: foodItem,
      );
    }
  }

  void addFood({
    required FoodItem foodItem,
  }) async {
    _isar.writeTxn(() => _isar.foodItems.put(foodItem));
  }
}
  //  void updateQuantity(FoodItem item, int quantity) {
  //   final index = state.indexOf(item);
  //   if (index != -1) {
  //     state[index].totQuantity = quantity;
  //     emit(List.from(state));
  //   }

  // }
  //  void saveSelectedFoodItems(List<FoodItem> selectedFoodItems) {
  //   foodRepository.saveSelectedFoodItems(selectedFoodItems);
  // }


// Future<void> saveSelectedFoodItems(List<FoodItem> selectedFoodItems) async {
//   await isar.writeTxn((isar) async {
//     await Future.forEach(selectedFoodItems, (foodItem) async {
//       await isar.selectedFoods
//           .put(SelectedFood(foodItem.name, foodItem.calories));
//     });
//   });
// }
