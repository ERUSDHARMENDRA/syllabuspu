import 'dart:convert';

class Engnotes {
  final String name;
  final String author;
  final String file;
  final String image;
  Engnotes({
    required this.name,
    required this.author,
    required this.file,
    required this.image,
  });

  Engnotes copyWith({
    String? name,
    String? author,
    String? file,
    String? image,
  }) {
    return Engnotes(
      name: name ?? this.name,
      author: author ?? this.author,
      file: file ?? this.file,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'author': author,
      'file': file,
      'image': image,
    };
  }


  

  factory Engnotes.fromMap(Map<String, dynamic> map) {
    return Engnotes(
      name: map['name'],
      author: map['author'],
      file: map['file'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Engnotes.fromJson(String source) => Engnotes.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Engnotes(name: $name, author: $author, file: $file, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Engnotes &&
      other.name == name &&
      other.author == author &&
      other.file == file &&
      other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      author.hashCode ^
      file.hashCode ^
      image.hashCode;
  }
}
