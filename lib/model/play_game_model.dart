//một lớp Post, tạo ra post từ json api


class PlayGameModel {
  int? id;
  String? noun;
  String? verbs;
  String? trueAnswer;
  int? categoryId;
  Cate? cate;

  PlayGameModel(
      {this.id,
        this.noun,
        this.verbs,
        this.trueAnswer,
        this.categoryId,
        this.cate});

  PlayGameModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    noun = json['noun'];
    verbs = json['verbs'];
    trueAnswer = json['true_answer'];
    categoryId = json['category_id'];
    cate = json['cate'] != null ? new Cate.fromJson(json['cate']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['noun'] = this.noun;
    data['verbs'] = this.verbs;
    data['true_answer'] = this.trueAnswer;
    data['category_id'] = this.categoryId;
    if (this.cate != null) {
      data['cate'] = this.cate?.toJson();
    }
    return data;
  }
}

class Cate {
  String? id;
  String? name;
  String? content;

  Cate({this.id, this.name, this.content});

  Cate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['content'] = this.content;
    return data;
  }
}