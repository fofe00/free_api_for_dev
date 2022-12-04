// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:free_api/dataLayer/dataProvider/data_provider.dart';
import 'package:free_api/dataLayer/models/entrie_model.dart';

class ApiRepository {
  final DataProvider dataProvider;
  ApiRepository({
    required this.dataProvider,
  });

  Future<EntrieModel> getEntries() async {
    var res = await dataProvider.getData(path: "entries");
    if (res.statusCode == 200) {
      return EntrieModel.fromJson(jsonDecode(res.body));
    } else {
      throw Exception("Failled to load Entries");
    }
  }
}
