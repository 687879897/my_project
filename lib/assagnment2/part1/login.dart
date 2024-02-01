import 'package:flutter/material.dart';

class login extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3b5998),
      body: Center(

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            IconButton(onPressed: (){}, icon: Icon(Icons.facebook,size: 50,color: Colors.white,),padding: EdgeInsets.fromLTRB(0,0,0,15),),
            Container(

              width: 320,
              margin: EdgeInsets.fromLTRB(5,0,5,0),
              padding: EdgeInsets.all(4.0), // Adjust padding as needed
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Color(0x4E68A0FF),  // You can customize the color here
                        width: 2.0,         )
                  )
              ),
              child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none
                ),
                hintText: "Email or Phone",
                hintStyle: TextStyle(color: Colors.white),
              ),
              ),
            ),
            Container(
              width: 320,
              margin: EdgeInsets.fromLTRB(5,0,5,0),
              padding: EdgeInsets.all(4), // Adjust padding as needed
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Color(0x4E68A0FF),  // You can customize the color here
                        width: 2.0,         )
                  )
              ),
              child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white),

              ),

              ),
            ),
            Container(
              width: 320,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "Home");
                },
                child: Text("Login",style: TextStyle(color: Color(0xFFA8B8DF)),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0x804e68a0),
                ),

              ),
            ),
            Container(

              margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Text("Sign Up for Facebook",style: TextStyle(color: Colors.white),),
            ),
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text("Forget Password",style: TextStyle(color: Colors.white),)
            )
          ],
        ),

      ),


    );
  }
}
