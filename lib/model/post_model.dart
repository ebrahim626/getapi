class PostModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel({this.id, this.title, this.body, this.userId});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }
}
