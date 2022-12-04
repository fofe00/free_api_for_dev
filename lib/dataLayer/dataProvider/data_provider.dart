import 'package:http/http.dart';

class DataProvider {
  final baseUrl = "https://api.publicapis.org";
  Uri buildUri({required String path}) {
    return Uri.parse(baseUrl + path);
  }

  Future<Response> getData({required String path}) async {
    final response = await get(
      buildUri(
        path: path,
      ),
    );
    return response;
  }
}
