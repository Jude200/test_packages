// ignore_for_file: file_names

import 'dart:convert';

class Number {
  String text;
  String number;
  bool found;
  String type;
  Number({
    required this.text,
    required this.number,
    required this.found,
    required this.type,
  });


  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'number': number,
      'found': found,
      'type': type,
    };
  }

  factory Number.fromMap(Map<String, dynamic> map) {
    return Number(
      text: map['text'] ?? '',
      number: map['number'] ?? '',
      found: map['found'] ?? false,
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Number.fromJson(String source) => Number.fromMap(json.decode(source));
}
