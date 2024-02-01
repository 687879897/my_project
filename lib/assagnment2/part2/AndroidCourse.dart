import 'package:flutter/material.dart';

import 'Home.dart';

class AndroidScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RoutAppOne",style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xff001f83),
        leading: const Icon(Icons.arrow_back,color: Colors.white,),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/assets/Bg.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                ///Image Container
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset('assets/assets/Android.jpeg'),
                ),
                ///Text Container
                Container(
                  margin: EdgeInsets.all(10),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.white,fontSize: 25),
                      children: [
                        TextSpan(text: 'Part 1 ( Java SE)\n'),
                        TextSpan(text: '1. Introduction to Java Programming\n'),
                        TextSpan(text: '   • Overview.\n'),
                        TextSpan(text: '   • Compiler and JVM\n'),
                        TextSpan(text: '   • Project Structure\n'),
                        TextSpan(text: '   • Hello World Application\n'),
                        TextSpan(text: '   • Variables and Data types\n'),
                        TextSpan(text: '   • Operators\n'),
                        TextSpan(text: '   • Conditional statements ( IF - Switch)\n'),
                        TextSpan(text: '   • Loops ( For - While - Do While)\n'),
                        TextSpan(text: '2. Basics\n'),
                        TextSpan(text: '   • nested loops\n'),
                        TextSpan(text: '   • Strings\n'),
                        TextSpan(text: '   • Arrays\n'),
                        TextSpan(text: '   • functions\n'),
                        TextSpan(text: '3. Object Oriented Programming\n'),
                        TextSpan(text: '   • Classes and Objects\n'),
                        TextSpan(text: '   • Encapsulation and data hiding\n'),
                        TextSpan(text: '   • Inheritance\n'),
                        TextSpan(text: '   • Polymorphism\n'),
                        TextSpan(text: '   • Abstraction (Abstract classes - Interfaces)\n'),
                        TextSpan(text: '4. Collections and Generics\n'),
                        TextSpan(text: '   • Sets, Lists\n'),
                        TextSpan(text: '   • Threading\n'),
                        TextSpan(text: '   • Generics Class and Method\n'),
                        TextSpan(text: 'Part 2 (Android Development)\n'),
                        TextSpan(text: '1. Introduction to Android\n'),
                        TextSpan(text: '   • Android OS\n'),
                        TextSpan(text: '   • Android Versions\n'),
                        TextSpan(text: '   • OS Architecture\n'),
                        TextSpan(text: '   • Application Component\n'),
                        TextSpan(text: '   • Android Studio and Gradle\n'),
                        TextSpan(text: '   • Creating Hello World\n'),
                        TextSpan(text: '2. UI Components\n'),
                        TextSpan(text: '   • Layouts(Constraints Layout- Linear Layout )\n'),
                        TextSpan(text: '   • Using resources ( drawables, Strings colors, and Styles )\n'),
                        TextSpan(text: '3. UI Components II\n'),
                        TextSpan(text: '   • Menu\n'),
                        TextSpan(text: '   • Support Localization\n'),
                        TextSpan(text: '   • Support Orientation\n'),
                        TextSpan(text: '4. Intents and Activities\n'),
                        TextSpan(text: '   • Intents\n'),
                        TextSpan(text: '   • Intent Filters\n'),
                        TextSpan(text: '5. Fragments\n'),
                        TextSpan(text: '   • what is fragments\n'),
                        TextSpan(text: '   • Fragment manager and transaction\n'),
                        TextSpan(text: '   • tablayout, NavigationDrawer, BottomNavigation\n'),
                        TextSpan(text: '6. Dialogs\n'),
                        TextSpan(text: '   • Alert Dialog\n'),
                        TextSpan(text: '   • Display dialog with items\n'),
                        TextSpan(text: '   • Custom dialogs (Dialog Fragment)\n'),
                        TextSpan(text: '7. Data Storage\n'),
                        TextSpan(text: '   • Shared Preference\n'),
                        TextSpan(text: '   • Room (Database Library) - from google Arch Components\n'),
                        TextSpan(text: '8. Threading and Services\n'),
                        TextSpan(text: '   • Threading\n'),
                        TextSpan(text: '   • Service and Intent Service\n'),
                        TextSpan(text: '9. Web services and APIs\n'),
                        TextSpan(text: '   • what is JSON ?\n'),
                        TextSpan(text: '   • how to make network calls and APIs\n'),
                        TextSpan(text: '   • Consuming Web APIs\n'),
                        TextSpan(text: '   • Using Retrofit and Gson Libraries\n'),
                        TextSpan(text: '   • how to cache Apis\n'),
                        TextSpan(text: '   • using Room and Retrofit Together\n'),
                        TextSpan(text: '   • what is Repository Pattern?\n'),
                        TextSpan(text: '10. FireBase RealTime Database\n'),
                        TextSpan(text: '   • how to deal with Realtime Database\n'),
                        TextSpan(text: '11. Notifications\n'),
                        TextSpan(text: '   • Simple Notification\n'),
                        TextSpan(text: '   • firebase to push Notifications\n'),
                        TextSpan(text: '   • one signal push notifications SDK\n'),
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
