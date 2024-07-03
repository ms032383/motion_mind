import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:motionmind/Pages/home.dart';
import 'package:motionmind/Utils/color.dart';

void main()async{
    //init hive
  await Hive.initFlutter();

  //Open a Box
  var box = await Hive.openBox('mybox');


  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: primarycolor,
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold,color: thirdcolor),
        displayMedium: TextStyle(fontSize: 16 ,color: thirdcolor),
      )),
      home: home(),
    );
  }
}
