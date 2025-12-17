import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoContainer extends StatelessWidget {
  final String taskname;
  final bool taskdone;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deletefunction;

  const TodoContainer({
    super.key,
    required this.taskname,
    required this.taskdone,
    this.onChanged,
    this.deletefunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        top: 20.0,
        bottom: 20.0,
      ),
      child: Slidable(
        endActionPane: ActionPane(
          motion:StretchMotion(), 
          children: [SlidableAction(
            onPressed: deletefunction,
            backgroundColor: Colors.red,
            icon: Icons.delete,
            borderRadius: BorderRadius.circular(12),
            )
            ],
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.yellow[600],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              //checkbox section
              Checkbox(
                value: taskdone,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
        
              //text section
              Text(
                taskname,
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  decoration: 
                  taskdone ? TextDecoration.lineThrough : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
