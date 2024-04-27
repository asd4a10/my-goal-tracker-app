import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goal_tracker_app/types/types.dart';

class GoalTile extends StatefulWidget {
  final Goal goal;
  final VoidCallback onDelete;
  const GoalTile({Key? key, required this.goal, required this.onDelete}) : super(key: key);

  @override
  State<GoalTile> createState() => _GoalTileState();
}

class _GoalTileState extends State<GoalTile> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.goal.title),
        subtitle: Text(widget.goal.description ?? 'No description'),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              IconButton(
                icon: Icon(widget.goal.isCompleted ? Icons.check_box : Icons.check_box_outline_blank),
                onPressed: () {
                  // Here, you could add functionality to mark the goal as completed
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: widget.onDelete
              ),
            ],
          ),
        ),
        onTap: () {
          // This could lead to a detailed view or editing screen for the goal
        },
      ),
    );
  }
}
