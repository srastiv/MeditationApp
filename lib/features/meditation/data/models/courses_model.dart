// To parse this JSON data, do
//
//     final coursesModel = coursesModelFromJson(jsonString);

import 'dart:convert';

class CoursesModel {
    CoursesModel({
        required this.courseTitle,
        required this.courseSubtitle,
        required this.courseDuration,
        required this.courseDescription,
    });

    final String courseTitle;
    final String courseSubtitle;
    final String courseDuration;
    final String courseDescription;

    factory CoursesModel.fromRawJson(String str) => CoursesModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CoursesModel.fromJson(Map<String, dynamic> json) => CoursesModel(
        courseTitle: json["courseTitle"],
        courseSubtitle: json["courseSubtitle"],
        courseDuration: json["courseDuration"],
        courseDescription: json["courseDescription"],
    );

    Map<String, dynamic> toJson() => {
        "courseTitle": courseTitle,
        "courseSubtitle": courseSubtitle,
        "courseDuration": courseDuration,
        "courseDescription": courseDescription,
    };
}
