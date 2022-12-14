import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/values/my_colors.dart';

class DrawsScreen extends StatefulWidget {
  const DrawsScreen({Key? key}) : super(key: key);

  @override
  State<DrawsScreen> createState() => _DrawsScreenState();
}

class _DrawsScreenState extends State<DrawsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backGroundColor,
      body: ScreenUtilInit(builder: (BuildContext context, Widget? child){
        return Container(
          child: Center(
            child: Text("Draws Screen"),
          ),
        );
      }),
    );
  }
}
