import 'dart:convert';

import 'package:http/http.dart' as http;
import 'data.dart';

Future<ProductDatas> getPublication([String keyword = '']) async {
  var url = Uri.https('api.testvalley.kr', 'v2/publications',
      {'page': '1', 'perPage': '40', 'keyword': keyword});
  print('get: ${url.toString()}');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  return ProductDatas(jsonDecode(response.body));
}
