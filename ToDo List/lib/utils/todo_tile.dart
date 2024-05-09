import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChange;
  Function(BuildContext)? deleteFuntion;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChange,
    required this.deleteFuntion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFuntion,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white, // Change background color to white
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChange,
                activeColor: const Color(0xFF5AB2FF),
              ),
              Text(
                taskName,
                style: TextStyle(
                  color: Colors.black87, // Change text color to black87
                  fontSize: 16,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
