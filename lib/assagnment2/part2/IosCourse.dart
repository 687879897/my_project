import 'package:flutter/material.dart';

import 'Home.dart';

class IOs extends StatelessWidget {
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
                  child: Image.asset('assets/assets/IOS.jpeg'),
                ),
                ///Text Container
                Container(
                  margin: EdgeInsets.all(10),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 25),
                      children: [
                        TextSpan(text: 'OOP Refreshment\n'),
                        TextSpan(text: '• Introduction\n'),
                        TextSpan(text: '  a. Installing OS X virtual machine\n'),
                        TextSpan(text: '  b. Installing Xcode and the iOS SDK\n'),
                        TextSpan(text: '  c. A guided tour of Xcode\n'),
                        TextSpan(text: '  d. An Introduction to Xcode playgrounds\n'),
                        TextSpan(text: '• Swift Programming Language\n'),
                        TextSpan(text: '  a. Swift Data Types, Constants, and Variables\n'),
                        TextSpan(text: '  b. Swift Operators and Expressions\n'),
                        TextSpan(text: '  c. Swift Flow Control\n'),
                        TextSpan(text: '  d. The Swift Switch Statement\n'),
                        TextSpan(text: '  e. An Overview of Swift Functions\n'),
                        TextSpan(text: '  f. The Basics of Object Oriented Programming in Swift\n'),
                        TextSpan(text: '  g. An Introduction to Swift Subclassing and Extensions\n'),
                        TextSpan(text: '  h. Working with Array and Dictionary Collections in Swift\n'),
                        TextSpan(text: '  i. Understanding Error Handling in Swift\n'),
                        TextSpan(text: '• Views, Layouts, and Storyboards.\n'),
                        TextSpan(text: '  a. Learning different types of Xcode projects\n'),
                        TextSpan(text: '  b. Creating first application\n'),
                        TextSpan(text: '  c. Introduction to application file structure.\n'),
                        TextSpan(text: '  d. Using Storyboards in Xcode\n'),
                        TextSpan(text: '  e. Introduction to basic UI Components.\n'),
                        TextSpan(text: '  f. Creating basic UI Components using Storyboard\n'),
                        TextSpan(text: '  g. Creating basic UI Components programmatically\n'),
                        TextSpan(text: '  h. Customizing UI Components.\n'),
                        TextSpan(text: '  i. An Introduction to Auto Layout in iOS\n'),
                        TextSpan(text: '  j. Working with iOS Auto Layout Constraints in Interface Builder\n'),
                        TextSpan(text: '  k. Creating Navigation controller and learning its flow\n'),
                        TextSpan(text: '  l. Creating tab-based application\n'),
                        TextSpan(text: '  m. Adding custom fonts\n'),
                        TextSpan(text: '  n. Creating table view \n'),
                        TextSpan(text: '  o. Example about gestures\n'),
                        TextSpan(text: '  p. Creating custom cells for tables\n'),
                        TextSpan(text: '  q. Animations  \n'),
                        TextSpan(text: '  r. Examples about subclass\n'),
                        TextSpan(text: '• Working with local data\n'),
                        TextSpan(text: '  a. Working with UserDefaults\n'),
                        TextSpan(text: '  b. Introduction to CoreData\n'),
                        TextSpan(text: '  c. Introduction to Realm\n'),
                        TextSpan(text: '  d. Creating data models\n'),
                        TextSpan(text: '  e. Saving retrieving data\n'),
                        TextSpan(text: '• ToDo app project\n'),
                        TextSpan(text: '  a. Implement the interface\n'),
                        TextSpan(text: '  b. Create realm models\n'),
                        TextSpan(text: '  c. Restore ToDo lists\n'),
                        TextSpan(text: '• CocoaPods\n'),
                        TextSpan(text: '  a. Introduction to Cocoapods\n'),
                        TextSpan(text: '  b. Installing sample pods\n'),
                        TextSpan(text: '  c. Learning how to use pods in a project\n'),
                        TextSpan(text: '  d. How to look for a useful pod\n'),
                        TextSpan(text: '  e. Example using Realm database third-party\n'),
                        TextSpan(text: '• Networking\n'),
                        TextSpan(text: '  a. Working with Alamofire pod\n'),
                        TextSpan(text: '  b. Installing and configuring Alamofire\n'),
                        TextSpan(text: '  c. Learning how to send GET \n'),
                        TextSpan(text: '  d. Learning how to parse JSON responses using ObjectMapper pod\n'),
                        TextSpan(text: '  e. Creating a sample login screen with POST \n'),
                        TextSpan(text: '  f. Creating a sample table view displaying data from a JSON object\n'),
                        TextSpan(text: '• Dynamic animator\n'),
                        TextSpan(text: '  a. Deal with the physics engine\n'),
                        TextSpan(text: '  b. Apply Gravity field to dynamic objects\n'),
                        TextSpan(text: '  c. Apply collision field to dynamic objects\n'),
                        TextSpan(text: '  d. Apply other physics fields to dynamic objects\n'),
                        TextSpan(text: '• Working with Maps\n'),
                        TextSpan(text: '  a. Introduction to maps\n'),
                        TextSpan(text: '  b. Showing current user location\n'),
                        TextSpan(text: '  c. Adding pins\n'),
                        TextSpan(text: '• Apply some design patterns\n'),
                        TextSpan(text: '  a. Creational: Singleton.\n'),
                        TextSpan(text: '  b. Structural: MVC, Decorator, Adapter, Facade.\n'),
                        TextSpan(text: '  c. Behavioral: Observer\n'),
                        TextSpan(text: '• Creating the final project depending on attendees\' needs\n'),
                        // ... (continue replacing Android development topics with OOP Refreshment topics)
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
