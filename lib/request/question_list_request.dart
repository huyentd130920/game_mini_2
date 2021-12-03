import 'dart:convert';
import 'package:game_mini_2/model/question_list_model.dart';
import 'package:http/http.dart' as http;

String baseUrl = "http://api.myfeel.me";

class RequestListQuestion{
  Future<List<QuestionListModel>> fetchPost() async {
    final Uri uri = Uri.http(baseUrl, '/Question/getListCategory');
    final List<QuestionListModel> listCateParse = [];
    final http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> listCate = data['listCategory'];
      listCate.forEach((value) {
        Map<dynamic, dynamic> val = value;
        listCateParse.add(QuestionListModel.fromJson(value));
      });
      return listCateParse;
    } else {
      print('Not found');
      return listCateParse;
    }
  }
}