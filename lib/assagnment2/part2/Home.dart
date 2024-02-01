import 'package:flutter/material.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouteAppOne"),
        backgroundColor: Color(0xFF001F83),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
          ),
          Coruses(path_image: "assets/assets/Android.jpeg" ),
          Container(
            width: 330,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 3),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "Android");
              },
              child: Text(
                "Android COURSE",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ),
          Coruses(path_image: "assets/assets/IOS.jpeg" ),
          Container(
            width: 330,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 3),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "Ios");
              },
              child: Text(
                "IOS COURSE",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ),
          Coruses(path_image: "assets/assets/fullStack.jpeg"),
          Container(
            width: 330,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 3),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "Fullstack");
              },
              child: Text(
               " fullStack COURSE",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class Coruses extends StatelessWidget {

  String path_image;

  // Require
  Coruses({required this.path_image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Image(
            image: AssetImage(path_image),
            width: 330,
            height: 170,
            fit: BoxFit.cover,
          ),
        ),

      ],
    );
  }
}
