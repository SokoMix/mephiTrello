class Task {
  String id;
  String title;
  String columnName;
  String? description;
  String member;
  DateTime? date;

  Task({
    required this.id,
    required this.columnName,
    required this.title,
    this.description,
    required this.member,
    this.date,
  });
}
