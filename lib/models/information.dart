import 'dart:convert';

class Information {
  final List<String>? image;
  final String title;
  final String description;
  final String name;
  final String dateTime;
  final String phoneNumber;
  final String address;
  Information({
    this.image,
    required this.title,
    required this.description,
    required this.name,
    required this.dateTime,
    required this.phoneNumber,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'description': description,
      'name': name,
      'dateTime': dateTime,
      'phoneNumber': phoneNumber,
      'address': address,
    };
  }

  factory Information.fromMap(Map<String, dynamic> map) {
    return Information(
      image: List<String>.from((map['image'])),
      title: map['title'] ?? "",
      description: map['description'] ?? "",
      name: map['name'] ?? "",
      dateTime: map['dateTime'] ?? "",
      phoneNumber: map['phoneNumber'] ?? "",
      address: map['address'] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory Information.fromJson(String source) =>
      Information.fromMap(json.decode(source) as Map<String, dynamic>);
}
