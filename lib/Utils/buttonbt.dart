import 'package:flutter/material.dart';
import 'package:motionmind/Utils/color.dart';

class button extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  button({super.key,required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,child: Text(text,style: TextStyle(color: thirdcolor,fontWeight: FontWeight.bold),),color: primarycolor,);
  }
}
