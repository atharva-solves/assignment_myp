class DayEntity {
  final String day;
  final String date;
  final bool isSelected;

  DayEntity({
    required this.day,
    required this.date,
    this.isSelected = false,
  });

  DayEntity copyWith({
    String? day,
    String? date,
    bool? isSelected,
  }) {
    return DayEntity(
      day: day ?? this.day,
      date: date ?? this.date,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}