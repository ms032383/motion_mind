import 'package:flutter/material.dart';



class responive extends StatelessWidget {
  final Widget mobile;
  final Widget Tablet;
  final Widget desktop;
  const responive({required this.mobile, required this.Tablet , required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,Constraints){
    if (Constraints.maxWidth<600){
      return mobile;
    }
    else if(Constraints.maxWidth<1200){
      return Tablet;
    }
    else{
      return desktop;
    }
    });
  }
}

