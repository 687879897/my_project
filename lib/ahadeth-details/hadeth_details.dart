import 'package:firest_app/ahadeth-details/modeldate_hadath.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_theme.dart';

class hadethDetalis extends StatefulWidget {
  hadethDetalis({super.key});
  static const routeName="hadeth";

  @override
  State<hadethDetalis> createState() => _hadethDetalisState();
}

class _hadethDetalisState extends State<hadethDetalis> {
  String filecontent="";

  String filename="";

  @override
  Widget build(BuildContext context) {
    hadethcontent args=ModalRoute.of(context)!.settings.arguments as hadethcontent;
    filename=args.filename;
    if(filecontent.isEmpty){
      readfile();
    }
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.background),fit: BoxFit.fill

          )
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar:AppBar(
          backgroundColor: AppColors.transparent,
          elevation: 0,
          shadowColor: AppColors.transparent,
          centerTitle: true,
          title: const Text("Islami",style: AppTheme.appBarTextStyle,),
        ),

        body:
        SingleChildScrollView(
            child: Column(children: [
              Text(args.name,style: AppTheme.appBarTextStyle,textDirection: TextDirection.rtl,),
              Container(color: Colors.black,width: 310,height: 3,),
              Container(
                  color: Colors.grey,
                  padding: EdgeInsets.symmetric(horizontal: 29,vertical: 100),
                  margin: EdgeInsets.all(20),
                  child: Text("$filecontent",
                    style: AppTheme.regularTitleTextStyle,
                    textDirection: TextDirection.rtl,
                  )),
            ],)
        ),
      ),
    );
  }

  Future<void> readfile()async{
    Future<String> file=rootBundle.loadString("assets/ahdeath/$filename");
    filecontent=await file;
    List<String> filelines=filecontent.split("\n");
    for(int i=0;i<filelines.length;i++){
      filelines[i]+="{${i+1}}";
    }
    filecontent=filelines.join(" ");
    setState(() {});
  }
}
