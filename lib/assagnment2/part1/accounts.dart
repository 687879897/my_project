import 'package:flutter/material.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                  Story(),
                ],
              ),
            ),
            account(),
            account(),
            account(),
            account(),
          ],
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(7, 7, 5, 6),
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Container(
              child: Image(
                image: AssetImage("assets/assets/facebookStory.jpg"),
                width: 80,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
            child: Icon(Icons.account_circle, color: Colors.blue),
          )

        ],
      ),
    );
  }
}
class account extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(7, 7, 0, 0),
              child: Icon(Icons.account_circle, size: 50,),
            ),
            Column(
              children: [
                Text("Owner"),
                Row(
                  children: [
                    Text("3h"),
                    Icon(Icons.public),
                  ],
                )
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(7, 15, 0, 15),
              child: Text("My post", style: TextStyle(fontSize: 20),),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text("100"),
                ),
                Image(
                  image: AssetImage("assets/assets/like.jpg"),
                  width: 30,
                  height: 30,
                ),
                Spacer(),
                Row(

                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child:  Text("100 Comment"),
                    )
                  ],
                )
              ],
            ),
            Container(
              width: 350,
              margin: EdgeInsets.fromLTRB(5,0,5,0),
              decoration: BoxDecoration(
                  border:  Border(
                      bottom: BorderSide(
                        color: Colors.grey,  // You can customize the color here
                        width: 2.0,         )
                  )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child:  Image(
                        image: AssetImage("assets/assets/singleLike.jpg"),
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Text("Like")
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child:  Image(
                        image: AssetImage("assets/assets/comment.jpg"),
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Text("comment")
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child:  Image(
                        image: AssetImage("assets/assets/share.png"),
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Text("share")
                  ],
                ),

              ],
            ),
            Container(
              width: 350,
              margin: EdgeInsets.fromLTRB(5,0,5,0),
              decoration: BoxDecoration(
                  border:  Border(
                      bottom: BorderSide(
                        color: Colors.grey,  // You can customize the color here
                        width: 2.0,         )
                  )
              ),
            ),
          ],
        ),
      ],
    );
  }
}
