
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firest_app/sura-deitals/modeldate_sura.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_theme.dart';

class SuraDetalis extends StatefulWidget {
  const SuraDetalis({Key? key}) : super(key: key); // Fix the super key parameter
  static const routeName = "sura";

  @override
  State<SuraDetalis> createState() => _SuraDetalisState();
}

class _SuraDetalisState extends State<SuraDetalis> {
  String suracontent = "";

  String filename = "";

  @override
  Widget build(BuildContext context) {
    Suracontent arg = ModalRoute.of(context)!.settings.arguments as Suracontent;
    filename = arg.filename;
    if (suracontent.isEmpty) {
      readfile();
    }
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.background),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          elevation: 0,
          shadowColor: AppColors.transparent,
          centerTitle: true,
          title: const Text(
            "Islami",
            style: AppTheme.appBarTextStyle,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                arg.name,
                style: AppTheme.appBarTextStyle,
                textDirection: TextDirection.rtl,
              ),
              Container(color: Colors.black, width: 310, height: 3,),
              Container(
                color: Colors.grey,
                padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 100),
                margin: const EdgeInsets.all(20),
                child: Text(
                  suracontent,
                  style: AppTheme.regularTitleTextStyle,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> readfile() async {
    Future<String> file = rootBundle.loadString("assets/quran/$filename");
    suracontent = await file;
    List<String> filelines = suracontent.split("\n");
    for (int i = 0; i < filelines.length; i++) {
      filelines[i] += "{${i+1}}";
    }

    suracontent = filelines.join(" ");
    setState(() {});
  }
}
