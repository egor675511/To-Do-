import 'package:flutter/material.dart';

import '../model/todo.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo_1 todo_1;
  final onToDo_1Changed;
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo_1,
    required this.onToDo_1Changed,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print('Clicked on Todo Item.');
          onToDo_1Changed(todo_1);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo_1.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo_1.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo_1.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo_1.id);
            },
          ),
        ),
      ),
    );
  }
}