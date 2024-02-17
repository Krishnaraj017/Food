// import 'package:dio/dio.dart';
// import 'package:food_demo/models/fetch_food_response.dart';
// import 'package:food_demo/models/food_item.dart';

// class FoodRepository {
//   final Dio _dio = Dio();
//   static const String basePath = 'https://rosettebackend-one.vercel.app/api';
//     static const String fetchFood = '/nutrition/initialdata';

//   Future<List<FoodItem>> fetchFoodItems() async {
//     try {
//       final response = await _dio.get('${basePath}${fetchFood}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = response.data;
//         final fetchFoodResponse = FetchFoodResponse.fromJson(data);
//         return fetchFoodResponse.result;
//       } else {
//         throw Exception('Failed to fetch food items');
//       }
//     } catch (e) {
//       throw Exception('Failed to fetch food items: $e');
//     }
//   }
// }

import 'package:food_demo/models/food_item.dart';

class FoodRepository {
  Future<List<FoodItem>> fetchFoodItems() async {
    // Creating dummy food items
    List<FoodItem> dummyFoodItems = [
      FoodItem(
        foodid: '1',
        name: 'Apple',
        calories: 52,
        proteins: 0,
        carbohydrates: 14,
        fats: 0,
        quantity: '1 medium apple',
        catogory: 'fruit',
        totQuantity: 1,

      ),
      FoodItem(
        foodid: '2',
        name: 'Banana',
        calories: 105,
        proteins: 1,
        carbohydrates: 27,
        fats: 0,
        quantity: '1 medium banana',
        catogory: 'Fruit',
        totQuantity: 1,
      ),
      FoodItem(
        foodid: '3',
        name: 'Egg',
        calories: 78,
        proteins: 6,
        carbohydrates: 0,
        fats: 5,
        quantity: '1 large egg',
        catogory: 'Fruite',
        totQuantity: 1
      ),
      FoodItem(
        foodid: '4',
        name: 'Chicken Breast',
        calories: 165,
        proteins: 31,
        carbohydrates: 0,
        fats: 3,
        quantity: '4 oz chicken breast',
        catogory: 'Fruite',
        totQuantity: 1
      ),
      FoodItem(
        foodid: '5',
        name: 'Brown Rice',
        calories: 216,
        proteins: 5,
        carbohydrates: 45,
        fats: 1,
        quantity: '1 cup cooked brown rice',
        catogory: 'Fruite',
        totQuantity: 1
      ),
    ];

    // Return the list of dummy food items
    return dummyFoodItems;
  }
}
