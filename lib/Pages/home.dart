import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:motionmind/Pages/add.dart';
import 'package:motionmind/Utils/color.dart';
import 'package:motionmind/Utils/todolist.dart';
import 'package:motionmind/Wigets/appbar.dart';
import 'package:motionmind/data/database.dart';

class home extends StatefulWidget {

  const home({super.key});

  @override
  State<home> createState() => _homeState();
}



class _homeState extends State<home> {
  final _mybox = Hive.box('mybox');
  Tododatabase db =Tododatabase();

  @override
  void initState() {
    // if this is the 1st time ever open the app

    if(_mybox.get('dotolist')==null){
      db.createInitialData();
    }
    else{
      db.loaddata();
    }
    super.initState();
  }


  var _item =[
    'Home',
    'School',
    'Work',
    'Personal'
  ];

  final addtext = TextEditingController();
  final itemnew = TextEditingController();

  void deleteTask(int index){
    setState(() {
      db.dotolist.removeAt(index);
    });
    db.updateDataBase();

  }




  void checkboxchange(bool? value,int index){
    setState(() {
      db.dotolist[index][2]=!db.dotolist[index][2];
    });
    db.updateDataBase();

  }

  //save task
  void saveNewTask(){
    setState(() {
      db.dotolist.add([addtext.text,'School',false]);

    });
    db.updateDataBase();
    Navigator.of(context).pop();

  }
  //createNewTask
  void createNewTask(){
    showDialog(context: context, builder: (context){
      return dialogbox(controller: addtext,onSave: saveNewTask,onCancel: ()=> Navigator.of(context).pop(),category: itemnew,);
    },);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondarycolor,
      appBar: Appbar,
      drawer: drawer,


      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        color: primarycolor,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home,color: Colors.white70,),
                onPressed: () {
                  setState(() {
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.search,color: Colors.white70,),
                onPressed: () {
                  setState(() {
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border_outlined,color: Colors.white70,),
                onPressed: () {
                  setState(() {
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.account_circle_outlined,color: Colors.white70,),
                onPressed: () {
                  setState(() {
                  });
                },
              )
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(

        onPressed: createNewTask,
        hoverColor: secondarycolor,
        backgroundColor: primarycolor,
        child: Icon(Icons.add,color: Colors.white70,),
      ),




      body: ListView.builder(
        itemCount: db.dotolist.length,
        itemBuilder: (context,index){
          return todolist(taskname: db.dotolist[index][0],
              taskstatus: db.dotolist[index][2],
              onChanged: (value)=> checkboxchange(value,index),
              priority: db.dotolist[index][1],
          deletelist: (context)=>deleteTask(index),);
        },
      ),
    );
  }
}
