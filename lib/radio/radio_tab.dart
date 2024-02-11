import 'package:flutter/material.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/assets/radio_image.png")),
          Text("اذاعة القران الكريم",style:AppTheme.mediumTitleTextStyle ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,size: 42,),color:AppColors.orange,),
              IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,size: 52),color:AppColors.orange),
              IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,size: 42),color:AppColors.orange ,),

            ],),


        ],
      ),
    );
  }
}