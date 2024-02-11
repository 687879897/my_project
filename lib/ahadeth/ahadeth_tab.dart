

import 'package:firest_app/ahadeth-details/modeldate_hadath.dart';
import 'package:flutter/material.dart';
import 'package:firest_app/ahadeth-details/hadeth_details.dart';
import '../../../../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_theme.dart';
import '../utils/constants.dart';
class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex:3,child: Center(child: Image.asset(AppAssets.ahadethTabLogo))),
        Expanded(
          flex: 7,
          child: buildScreenContent(),
        ),
      ],
    );
  }
  Column buildScreenContent() {
    return Column(
      children: [
        Container(width: double.infinity,height: 3,color: AppColors.orange,),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("الاحاديث",style: AppTheme.mediumTitleTextStyle,textAlign: TextAlign.center,),
            ],
          ),
        ),
        Container(width: double.infinity,height: 3,color: AppColors.orange,),
        Expanded(child: buildHadethListView()),
      ],
    );
  }

  ListView buildHadethListView() {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            Navigator.pushNamed(context, hadethDetalis.routeName,arguments: hadethcontent(filename:"h${index+1}.txt" , name: "الحديث رقم ${index+1}"));
          },
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Expanded(child: Text("الحديث رقم ${index+1}",
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: AppTheme.regularTitleTextStyle,)),
            ],
          ),
        );
      },
    );
  }
}