import 'dart:convert';

class Meditation {
  int id;
  String name;
  String mTime;
  Meditation({
    required this.id,
    required this.name,
    required this.mTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'mTime': mTime,
    };
  }

  factory Meditation.fromMap(Map<String, dynamic> map) {
    return Meditation(
      id: map['id']?.toInt(),
      name: map['name'],
      mTime: map['mTime'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Meditation.fromJson(String source) => Meditation.fromMap(json.decode(source));
}
