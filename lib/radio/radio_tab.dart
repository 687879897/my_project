import 'package:flutter/material.dart';

import '../utils/app_assets.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(flex:3,child: Center(child: Image.asset("assets/assets/radio_image.png"))),
          
        ],
      ),
    );;
  }
}