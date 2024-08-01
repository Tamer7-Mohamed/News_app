// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names, non_constant_identifier_names

class Source {
  final String? id;
  final String? name;
  Source({
    required this.id,
    required this.name,
  });
}

class ArticalModel {
  final String? image;
  final String title;
  final String? SubTitle;
  final Source source;
  ArticalModel({
    required this.image,
    required this.title,
    required this.SubTitle,
    required this.source,
  });
  factory ArticalModel.fromJson(json) {
    return ArticalModel(
      image: json['urlToImage'],
      title: json['title'],
      SubTitle: json['description'],
      source: Source(
        id: json['source']['id'],
        name: json['source']['name'],
      ),
    );
  }
}
