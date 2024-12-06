class Person {
  String? name;
  String? address;
  int? age;
  String? image;
  String? description;

  Person({this.name, this.address, this.age, this.image, this.description});

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    age = json['age'];
    image = json['image'];
    description = json['description'];
  }

  // factory Person.fromJson(Map<String, dynamic> json) {
  //   return Person(
  //     name: json['name'],
  //     address: json['address'],
  //     age: json['age'],
  //     image: json['image'],
  //     description: json['description'],
  //   );
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['address'] = address;
    data['age'] = age;
    data['image'] = image;
    data['description'] = description;
    return data;
  }
}
