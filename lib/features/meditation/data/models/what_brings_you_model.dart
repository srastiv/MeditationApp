import 'dart:convert';

class WhatBringsYouModel {
  WhatBringsYouModel({
    required this.whatBringsTitle,
    required this.whatBringsBgColor,
    required this.whatBringsSvGpath,
  });

  final String whatBringsTitle;
  final String whatBringsBgColor;
  final String whatBringsSvGpath;

  factory WhatBringsYouModel.fromRawJson(String str) =>
      WhatBringsYouModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WhatBringsYouModel.fromJson(Map<String, dynamic> json) =>
      WhatBringsYouModel(
        whatBringsTitle: json["whatBringsTitle"],
        whatBringsBgColor: json["whatBringsBGColor"],
        whatBringsSvGpath: json["whatBringsSVGpath"],
      );

  Map<String, dynamic> toJson() => {
        "whatBringsTitle": whatBringsTitle,
        "whatBringsBGColor": whatBringsBgColor,
        "whatBringsSVGpath": whatBringsSvGpath,
      };
}
