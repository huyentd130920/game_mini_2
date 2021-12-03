class QuestionListModel {
  String? id;
  String? name;
  String? totalQuestion;

  QuestionListModel({this.id, this.name, this.totalQuestion});

  QuestionListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    totalQuestion = json['TotalQuestion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['TotalQuestion'] = this.totalQuestion;
    return data;
  }
}