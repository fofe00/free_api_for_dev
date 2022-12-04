import 'dart:convert';

CategoryiModel categoryiModelFromJson(String str) =>
    CategoryiModel.fromJson(json.decode(str));

String categoryiModelToJson(CategoryiModel data) => json.encode(data.toJson());

class CategoryiModel {
  CategoryiModel({
    required this.count,
    required this.categories,
  });

  final int count;
  final List<String> categories;

  factory CategoryiModel.fromJson(Map<String, dynamic> json) => CategoryiModel(
        count: json["count"],
        categories: List<String>.from(json["categories"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "categories": List<dynamic>.from(categories.map((x) => x)),
      };
}
