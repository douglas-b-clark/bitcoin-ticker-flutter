import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.uri);

  final Uri uri;

  Future getData() async {
    var response = await http.post(uri);

    if (response.statusCode == 200) {
      print('Response: ' + response.body);
      return jsonDecode(response.body);
    } else {
      print('Status code: ' + response.statusCode.toString());
      print('URI: ' + uri.toString());
    }
  }
}
