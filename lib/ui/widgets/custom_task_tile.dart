import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/models/task.dart';
import 'package:flutter_to_do_app/ui/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTaskTile extends StatelessWidget {
  final Task? task;

  const CustomTaskTile({
    Key? key,
    this.task,
  }) : super(key: key);

  _getBackgroundColor(int no){
    switch (no) {
      case 0:
        return bluishColor;
      case 1:
        return pinkColor;
      case 2:
        return yellowColor;
      default:
        return bluishColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 12,),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: _getBackgroundColor(task?.color ?? 0),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task?.title ?? '',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        color: Colors.grey.shade200,
                        size: 18,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '${task!.startTime} - ${task!.endTime}',
                        style: GoogleFonts.lato(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    task?.note ?? '',
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.grey.shade100,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              width: 0.5,
              color: Colors.grey.shade200.withOpacity(0.7),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                task!.isCompleted == 1 ? 'Completed' : 'To-Do',
                style: GoogleFonts.lato(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
