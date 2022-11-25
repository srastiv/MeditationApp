import 'package:equatable/equatable.dart';
import 'package:flutter_svg/svg.dart';

class CoursesEntity extends Equatable {
  final String courseTitle;
  final String courseSubtitle;
  final String courseDuration;
  final String courseDescription;

  const CoursesEntity({
    required this.courseDuration,
    required this.courseSubtitle,
    required this.courseTitle,
    required this.courseDescription,
  });

  @override
  List<Object?> get props => [
        courseTitle,
        courseSubtitle,
        courseDuration,
        courseDescription,
      ];
}
