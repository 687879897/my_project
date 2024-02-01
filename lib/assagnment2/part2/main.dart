import 'package:flutter/material.dart';
import 'Home.dart';
import 'AndroidCourse.dart';
import 'IosCourse.dart';
import 'fullstack_Course.dart';
void main() {
  runApp(MaterialApp(
    routes:{
    "Home":(_)=>Home(),
    "Ios":(_)=>IOs(),
      "Android":(_)=>AndroidScreen(),
      "Fullstack":(_)=>Fullstack(),
    },
    initialRoute: "Home",
  )
  );
}


