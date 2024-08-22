import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies_app/constants/ApiConstants.dart';

class ApiManager {


  void getmovies() async {
    Uri url = Uri.https(
      ApiConstants.baseurl,
      ApiConstants.unencodedPath,
      {
        'api_key': '81b8e20dee35c380e6f0fd57898ec3fd',
      },
    );
    try {
      var response = await http.get(url);
      var json = jsonDecode(response.body);


      
    } catch (e) {
      rethrow;
    }
  }
}
