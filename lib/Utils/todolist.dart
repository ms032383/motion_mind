import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:motionmind/Utils/color.dart';
class todolist extends StatelessWidget {
  final String taskname;
  final bool taskstatus;
  final String priority;
  Function(BuildContext)? deletelist;

  Function(bool?)? onChanged;
  todolist({super.key,required this.taskname,required this.taskstatus,required this.onChanged , required this.priority,required this.deletelist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(),
        children: [
          SlidableAction(onPressed: deletelist,
          icon: Icons.delete,
          backgroundColor: thirdcolor,
          borderRadius: BorderRadius.circular(12),),
        ],),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              Checkbox(value: taskstatus, onChanged: onChanged,activeColor: thirdcolor,hoverColor: secondarycolor, focusColor: thirdcolor,),
              //task Name
              Column(

                children: [




                    Text(taskname,style: TextStyle(color: thirdcolor,fontSize: 16,fontWeight: FontWeight.bold
                    ,decoration: taskstatus? TextDecoration.lineThrough : TextDecoration.none),
                    ),

                ],
              ),

              //chekbox



            ],
          ),
          decoration: BoxDecoration(
            color: primarycolor,
            borderRadius: BorderRadius.circular(12)
          ),
        ),
      ),
    );
  }
}
