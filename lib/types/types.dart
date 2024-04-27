class Goal {
  int id;
  String title;
  String? description;
  DateTime? dueDate;
  bool isCompleted = false;

  Goal({required this.id, required this.title, this.description, this.dueDate});

// You might add methods here that relate to the goal, like updating status, calculating time remaining, etc.
}