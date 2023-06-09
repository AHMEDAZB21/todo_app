import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:todo_app/model/todo_dm.dart';

import '../../../../utils/app_colors.dart';

class Todo extends StatelessWidget {
  TodoDm todo;

  Todo({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
      child: SwipeActionCell(
        key: ObjectKey(todo),
        leadingActions: [
          SwipeAction(
            icon: const Icon(
              Icons.delete,
              color: AppColors.white,
              size: 40.0,
            ),
            title: "delete",
            backgroundRadius: 12,
            onTap: (CompletionHandler handler) async {},
            color: Colors.red,
          ),
        ],
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            children: [
              buildVerticalLine(),
              const SizedBox(
                width: 15.0,
              ),
              buildMiddleColumn(context),
              buildStateIcon(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildVerticalLine() {
    return Container(
      color: todo.isDone ? AppColors.isDone : AppColors.primiaryColor,
      height: 60.0,
      width: 4.0,
    );
  }

  Widget buildMiddleColumn(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            todo.title,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            todo.description,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget buildStateIcon() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.primiaryColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Image.asset("assets/icon_check.png"),
    );
  }
}
