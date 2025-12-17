import 'package:flutter/material.dart';
import 'package:todo_app/util/mybutton.dart';

class Alertbox extends StatelessWidget {
  final controller;
  VoidCallback Add;
  VoidCallback Cancel;
  Alertbox({super.key, required this.controller, required this.Add, required this.Cancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: Colors.yellow[400],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
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
                Button(text: 'Add', onPressed: Add),

                Button(text: 'Cancel', onPressed: Cancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
