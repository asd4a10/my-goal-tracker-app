import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goal_tracker_app/components/GoalTile.dart';
import 'package:goal_tracker_app/types/types.dart';

class GoalList extends StatefulWidget {
  final List<Goal> goals;
  const GoalList({Key? key, required this.goals}) : super(key: key);



  @override
  State<GoalList> createState() => _GoalListState();
}

class _GoalListState extends State<GoalList> {


  // Function to remove a goal
  void removeGoal(int index) {
    setState(() {
      widget.goals.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: widget.goals.length,
        itemBuilder: (context, index) {
          return GoalTile(goal: widget.goals[index], onDelete: () => removeGoal(index),);
        },
      ),
    );
  }
}
