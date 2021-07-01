import 'dart:convert';
import 'package:http/http.dart' as https;
import 'package:smart_waling/Models/news_model.dart';

class WalingpageService {
  getWalingData() async {
    https.Response response;
    response = await https
        .get(Uri.parse("https://waling.smartpalika.io/apilink/nagarik-wodapatra"));

    if (response.statusCode == 200) {
      dynamic d = jsonDecode(response.body);
      List<dynamic> list = d['data'];

      var newsapidata = list.map((e) => Product.fromJson(e)).toList();
      List heading = d == [] ? [] : list.where((0) => o['data'] == value).toList();
    } else {
      return null;
    }
  }
}
