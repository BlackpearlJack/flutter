import 'dart:convert';
import 'dart:io';

import 'package:future_builder_app/pojo/Response.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ApiServiceProvider {
  final String _BASE_URL = "https://reqres.in/api/users";

  Future<Response> getUser() async {
    String fileName = "userdata.json";

    var dir = await getTemporaryDirectory();

    File file = new File(dir.path + "/" + fileName);
    if (file.existsSync()) {
      print("Loading from cache");
      var jsonData = file.readAsStringSync();
      Response response = Response.fromJson(json.decode(jsonData));
      return response;
    } else {
      print("Loading from API");
      var response = await http.get(Uri.parse(_BASE_URL));

      if (response.statusCode == 200) {
        var jsonResponse = response.body;
        Response res = Response.fromJson(json.decode(jsonResponse));
        //save json in local file
        file.writeAsStringSync(jsonResponse, flush: true, mode: FileMode.write);

        return res;
      }
    }
  }
}
