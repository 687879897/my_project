import 'package:flutter/material.dart';

class Sebhascreen extends StatefulWidget {
  const Sebhascreen({Key? key});

  @override
  State<Sebhascreen> createState() => _SebhascreenState();
}

class _SebhascreenState extends State<Sebhascreen> {
  int index = 0;
  int countofzeqr = 0;
  double rotationAngle = 0.0; // Initial rotation angle

  List<String> zeqr = ["سبحان الله", "الحمدالله", "الله اكبر", "لا اله الا الله"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend the body behind the app bar

      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/assets/default_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // الصورة الأولى
                    Positioned(
                      right: 60,
                      top: 0,
                      child: Image.asset(
                        "assets/assets/head_sebha_logo.png",
                        width: 200,
                        height: 200,
                      ),
                    ),
                    // الصورة الثانية (with rotation)
                    Positioned(
                      top: 123,
                      child: Transform.rotate(
                        angle: rotationAngle,
                        child: Image.asset(
                          "assets/assets/body_sebha_logo.png",
                          width: 200,
                          height: 180,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "عدد التسبيحات",
                        style: TextStyle(fontSize: 30),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 60,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          countofzeqr++;
                          rotationAngle += 0.2; // Adjust the rotation angle as needed
                          setState(() {});
                          tasbeh();
                        },
                        child: Text(
                          "$countofzeqr",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFC9B396),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          color: Color(0xFFB6925F),
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              zeqr[index],
                              textDirection: TextDirection.rtl,
                              style: TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void tasbeh() {
    if (countofzeqr % 33 == 0 && index < 4) {
      index++;
    }
    if (index == 4) {
      index = 0;
    }
  }
}
