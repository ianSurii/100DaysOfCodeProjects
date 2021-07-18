class Shape {
  String shapeName;
  Property property;

  Shape({required this.shapeName, required this.property});

  factory Shape.fromJson(Map<String, dynamic> parsedJson) {
    return Shape(
        shapeName: parsedJson['shape_name'],
        property: Property.fromJson(parsedJson['property']));
  }
}

class Property {
  double width;
  double breadth;

  Property({required this.width, required this.breadth});

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(width: json['width'], breadth: json['breadth']);
  }
}
