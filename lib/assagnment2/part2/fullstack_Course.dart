import 'package:flutter/material.dart';

import 'Home.dart';

class Fullstack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RoutAppOne", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff001f83),
        leading: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/assets/Bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                ///Image Container
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset('assets/assets/fullStack.jpeg'),
                ),
                ///Text Container
                Container(
                  margin: EdgeInsets.all(10),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 25),
                      children: [
                        TextSpan(text: '•HTML\n'),
                        TextSpan(text: '•HTML 5\n'),
                        TextSpan(text: '•CSS\n'),
                        TextSpan(text: '•CSS3\n'),
                        TextSpan(text: '•SASS\n'),
                        TextSpan(text: '•Bootstrap 4\n'),
                        TextSpan(text: '•JavaScript\n'),
                        TextSpan(text: '•Regular expressions\n'),
                        TextSpan(text: '•ECMAScript 6\n'),
                        TextSpan(text: '•JQuery\n'),
                        TextSpan(text: '•angular 7\n'),
                        TextSpan(text: '•fabric.js\n'),
                        TextSpan(text: '•AJAX\n'),
                        TextSpan(text: '•JSON\n'),
                        TextSpan(text: '•Hosting and domains\n'),
                        TextSpan(text: '•Freelancing tips and tricks\n'),
                        TextSpan(text: '•PHP\n'),
                        TextSpan(text: '•MYSQL\n'),
                        TextSpan(text: '•MYSQL advanced queries and triggers\n'),
                        TextSpan(text: '•OOP\n'),
                        TextSpan(text: '•Design Patterns\n'),
                        TextSpan(text: '•MVC\n'),
                        TextSpan(text: '•laravel\n'),
                        TextSpan(text: '•build Api , Api authentication\n'),
                        TextSpan(text: '•connect wordpress with laravel\n'),
                        TextSpan(text: '•build wordpress web service\n'),
                        TextSpan(text: '•agile\n'),
                        TextSpan(text: '•Scrum\n'),
                        TextSpan(text: '•Software development process\n'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
