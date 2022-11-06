import 'dart:convert';

class Rgb {
  int r;
  int g;
  int b;
  Rgb({
    required this.r,
    required this.g,
    required this.b,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'r': r,
      'g': g,
      'b': b,
    };
  }

  factory Rgb.fromMap(Map<String, dynamic> map) {
    return Rgb(
      r: map['r']?.toInt(),
      g: map['g']?.toInt(),
      b: map['b']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Rgb.fromJson(String source) => Rgb.fromMap(json.decode(source));
}
