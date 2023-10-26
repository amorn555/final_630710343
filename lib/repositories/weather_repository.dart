
import 'dart:convert';

import 'package:final_630710343/models/weather.dart';
import 'package:final_630710343/services/api_caller.dart';

class EnvironmentRespository {
  Future<List<Weather>> getEnvironment() async {
    try {
      var result = await ApiCaller().get('https://cpsu-test-api.herokuapp.com/api/1_2566/weather/current?city=bangkok');
      List list = jsonDecode(result);
      List<Weather> environmentList =
      list.map((item) => Weather.fromJson(item)).toList();
      return environmentList;
    } catch (e) {
      rethrow;
    }
  }

}