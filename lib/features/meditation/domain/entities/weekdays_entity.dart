import 'package:equatable/equatable.dart';


class WeekdaysEntity extends Equatable {
  final String weekdays;
   bool selectedOrNot;

  WeekdaysEntity({required this.selectedOrNot, required this.weekdays});

  @override
  List<Object?> get props => [
        weekdays,
        selectedOrNot,
      ];
}
