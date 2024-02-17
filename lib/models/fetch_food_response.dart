import 'package:food_demo/models/food_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_food_response.g.dart';

@JsonSerializable()
class FetchFoodResponse {
  final String message;
  final List<FoodItem> result;
  final int status;
  FetchFoodResponse({
    required this.message,
    required this.result,
    required this.status,
  });

  factory FetchFoodResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchFoodResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FetchFoodResponseToJson(this);
}
