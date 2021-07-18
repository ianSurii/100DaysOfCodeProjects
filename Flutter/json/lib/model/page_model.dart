import 'dart:convert';

class Page {
  int page;
  int perPage;
  int total;
  int totalPages;
  Author author;
  List<Data> data;

  Page(
      {required this.page,
      required this.perPage,
      required this.total,
      required this.totalPages,
      required this.author,
      required this.data});
  Map<String, dynamic> toMap() {
    return {'page': page, 'perPage': perPage, 'author': author, 'data': data};
  }

  factory Page.fromJson(Map<String, dynamic> parsedJson) {
    

    var list = parsedJson['data'] as List;
    List<Data> data = list.map((i) => Data.fromJson(i)).toList();

    return Page(
        page: parsedJson['page'],
        perPage: parsedJson['per_page'],
        total: parsedJson['total'],
        totalPages: parsedJson['total_pages'],
        author: Author.fromJson(parsedJson['author']),
        data: data);
  }
}

class Author {
  String firstName;
  String lastName;

  Author({required this.firstName, required this.lastName});

  factory Author.fromJson(Map<String, dynamic> parsedJson) {
    return Author(
      firstName: parsedJson['first_name'],
      lastName: parsedJson['last_name'],
    );
  }
}

class Data {
  int id;
  String firstName; // add others
  List<Image> imagesList;

  Data({required this.id, required this.firstName, required this.imagesList});

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['images'] as List;
    List<Image> images = list.map((i) => Image.fromJson(i)).toList();

    return Data(
        id: parsedJson['id'],
        firstName: parsedJson['first_name'],
        imagesList: images);
  }
}

class Image {
  int id;
  String imageName;

  Image({required this.id, required this.imageName});

  factory Image.fromJson(Map<String, dynamic> parsedJson) {
    return Image(
      id: parsedJson['id'],
      imageName: parsedJson['imageName'],
    );
  }
}
