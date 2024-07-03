import 'package:flutter/material.dart';
import 'package:motionmind/Utils/buttonbt.dart';
import 'package:motionmind/Utils/color.dart';

class dialogbox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  final category;


  dialogbox({super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    required this.category,

  });

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      backgroundColor:primarycolor,
      content: Container(
        height: 250,
        child: Column(
          children: [
            //newtask
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Center(child: Text('New Task',style: TextStyle(color: thirdcolor,fontSize: 24,wordSpacing: 2.0,),)),
              ),
            ),


            //getuser input
            TextField(
              controller: controller,
              style: TextStyle(color: thirdcolor),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: secondarycolor)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide:BorderSide(color: secondarycolor) ),

                hintStyle: TextStyle(color: thirdcolor),
                focusColor:secondarycolor,
                hintText: 'Add a new task'
              ),
            ),
            
            //DropDown Menu

            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: category,
                style: TextStyle(color: thirdcolor),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: secondarycolor)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide:BorderSide(color: secondarycolor) ),

                    hintStyle: TextStyle(color: thirdcolor),
                    focusColor:secondarycolor,
                    hintText: 'Category'
                ),
              ),
            ),
            




            //button
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                //savebutton
                button(text: 'Save', onPressed: onSave),
                SizedBox(width: 8,),

                //cancel button
                button(text: 'Cancel', onPressed: onCancel),


              ],),
            )

          ],
        ),
      ),
    );
  }
}
