import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xff000001),
        title: Row(children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/person.jpg"), radius: 15,),
          Container(
            margin: EdgeInsets.only(right: 20),)
          ,
          Text("Person")
        ],),
        leading: Icon(Icons.arrow_back),

        actions: [IconButton(icon: Icon(Icons.videocam), onPressed: () {},),
          IconButton(icon: Icon(Icons.call), onPressed: () {},),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {},),
        ],

      ),
      body: Container(

          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/background.png'),
                fit: BoxFit.cover),

          ),

          child: Column(

            children: [Container(
              margin: EdgeInsets.all(20),
              child: Row(children: [
                CircleAvatar(backgroundImage: AssetImage("assets/person1.jpg"),
                  radius: 18,),
                Container(padding: EdgeInsets.all(10),),
                Container(
                  padding: EdgeInsets.all(16.0), // Adjust padding as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0), // Adjust radius as needed
                    border: Border.all(
                      color: Colors.white, // Border color
                      width: 1.8, // Border width
                    ),
                  ),
                  child: Text(
                    'This Is My First Message ',
                    style: TextStyle(fontSize: 16.0,color: Colors.white),
                  ),
                ),
              ]),),

              Container(
                margin: EdgeInsets.all(20),
                child: Row(

                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [

                      Container(
                        padding: EdgeInsets.all(16.0), // Adjust padding as needed
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0), // Adjust radius as needed
                          border: Border.all(
                            color: Colors.white, // Border color
                            width: 1.8, // Border width
                          ),
                        ),
                        child: Text(
                            'This Is My Second message ',
                            style: TextStyle(fontSize: 16.0,color: Colors.white),
                        ),
                  ),
                  Container(padding: EdgeInsets.all(10),)
                      ,
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/person2.jpg"),
                        radius: 18,),
                    ]),
              ),
Spacer(flex: 1,),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(children: [
Expanded(child: TextField(decoration: InputDecoration(
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),
      borderSide:BorderSide(width:0.8,color: Colors.white)
  ),
  hintText: "type a message",
  hintStyle: TextStyle(color: Colors.white),
  prefixIcon: IconButton(onPressed: (){},icon:Icon(Icons.insert_emoticon),color: Colors.white,),
  suffixIcon:  IconButton(onPressed: (){},icon:Icon(Icons.attach_file),color: Colors.white,),
),
),),


                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,

                        )
                        ,),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.keyboard_voice),
                      ),
                    ),
                  ],
                  ),

                ],

          )

      ]),

    ),
  )
// Container(child: Image.asset('assets/background.png'),),
  ));

 }

//   )
//Text("this is my second message",
//                           style: TextStyle(color: Colors.white)),