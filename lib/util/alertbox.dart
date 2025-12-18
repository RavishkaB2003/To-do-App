// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:todo_app/util/mybutton.dart';

class Alertbox extends StatelessWidget {
  final dynamic controller;
  final VoidCallback add;
  final VoidCallback cancel;
  const Alertbox({super.key, required this.controller, required this.add, required this.cancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: Theme.of(context).colorScheme.surface,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              style: TextStyle(
                color: Theme.of(context).textTheme.titleMedium?.color),
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 10,
              //buttons section
              children: [
                Button(text: 'Add', 
                onPressed: add,
              ),

                Button(text: 'Cancel', 
                onPressed: cancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
