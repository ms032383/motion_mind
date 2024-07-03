import 'package:hive/hive.dart';

class Tododatabase{
  //list
  List dotolist =[

  ];

  //refernce the box
  final _mybox = Hive.box('mybox');

  //run this method if this is thee 1st time ever opening this app
  void createInitialData(){
    dotolist= [
      ['Make Tutorial','work',false],
      ['Do Exercise','work',false],
    ];

  }
  //load the data from database
  void loaddata(){
    dotolist= _mybox.get('dotolist');
  }

  //update the database
  void  updateDataBase(){
    _mybox.put('dotolist',dotolist);
  }




}