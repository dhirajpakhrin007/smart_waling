import 'dart:convert';
import 'package:http/http.dart' as https;
import 'package:smart_waling/Models/news_model.dart';

class WalingService {
  getFacts() async {
    https.Response response;
    response = await https
        .get(Uri.parse("https://waling.smartpalika.io/apilink/news"));

    if (response.statusCode == 200) {
      dynamic d = jsonDecode(response.body);
      List<dynamic> list = d['data'];

      var newsapidata = list.map((e) => Product.fromJson(e)).toList();
      return newsapidata;
    } else {
      return null;
    }
  }
}
