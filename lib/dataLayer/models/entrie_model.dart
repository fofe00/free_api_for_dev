import 'package:free_api/dataLayer/models/api_model.dart';

class EntrieModel {
  final int count;
  final List<ApiModel> apiList;
  EntrieModel({
    required this.count,
    required this.apiList,
  });

  static EntrieModel fromJson(Map<String, dynamic> json) {
    return EntrieModel(
      count: json["count"],
      apiList: List<ApiModel>.from(
        json["entries"].map(
          (x) => ApiModel.fromJson(x),
        ),
      ),
    );
  }
}
