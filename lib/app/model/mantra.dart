import 'dart:convert';

import 'package:monks_helper/app/model/rgb.dart';

class Mantra {
  int? id;
  String? name;
  String? buddhaName;
  String? symbol;
  String? mantraDesc;
  int? qtdR;
  int? goal;
  int? acc;
  Rgb? rgb;
  bool? fulfill;
  Mantra({
    this.id,
    this.name,
    this.buddhaName,
    this.symbol,
    this.mantraDesc,
    this.qtdR,
    this.goal,
    this.acc,
    this.rgb,
    this.fulfill,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'buddhaName': buddhaName,
      'symbol': symbol,
      'mantraDesc': mantraDesc,
      'qtdR': qtdR,
      'goal': goal,
      'acc': acc,
      'rgb': rgb?.toMap(),
      'fulfill': fulfill,
    };
  }

  factory Mantra.fromMap(Map<String, dynamic> map, Rgb rgbG) {
    return Mantra(
      id: map['id']?.toInt(),
      name: map['name'],
      buddhaName: map['buddhaName'],
      symbol: map['symbol'],
      mantraDesc: map['mantraDesc'],
      qtdR: map['qtdR']?.toInt(),
      goal: map['goal']?.toInt(),
      acc: map['acc']?.toInt(),
      rgb: map['rgb'] != null ? rgbG : null,
      fulfill: map['fulfill'],
    );
  }

  String toJson() => json.encode(toMap());

  Mantra copyWith({
    int? id,
    String? name,
    String? buddhaName,
    String? symbol,
    String? mantraDesc,
    int? qtdR,
    int? goal,
    int? acc,
    Rgb? rgb,
    bool? fulfill,
  }) {
    return Mantra(
      id: id ?? this.id,
      name: name ?? this.name,
      buddhaName: buddhaName ?? this.buddhaName,
      symbol: symbol ?? this.symbol,
      mantraDesc: mantraDesc ?? this.mantraDesc,
      qtdR: qtdR ?? this.qtdR,
      goal: goal ?? this.goal,
      acc: acc ?? this.acc,
      rgb: rgb ?? this.rgb,
      fulfill: fulfill ?? this.fulfill,
    );
  }
}
