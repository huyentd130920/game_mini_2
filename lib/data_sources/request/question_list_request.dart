import 'dart:convert';
import 'package:game_mini_2/data_sources/api/api_url.dart';
import 'package:game_mini_2/model/question_list_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_map/flutter_map.dart';


class ApiQuestionList{
  Future<List<QuestionListModel>> fetchUser(){
    return http
        .get(ApiUrl().apiUser)
        .then((http.Response response) {
      final String jsonBody = response.body;
      final int statusCode = response.statusCode;

      if(statusCode == 200 || jsonBody == null){
        print(response.reasonPhrase);
        throw new Exception("lỗi load api");
      }
      final JsonDecoder _decoder = new JsonDecoder();
      final useListContainer = _decoder.convert(jsonBody);
      final List userList = useListContainer['results'];
      // return userList.map((contactRaw) => new User.fromJson(contactRaw)).toList();
    });
  }
}