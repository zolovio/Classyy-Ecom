import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/data/values/my_colors.dart';
import 'package:lucky_draw_app/data/values/styles.dart';
import 'package:lucky_draw_app/ui/screens/auth/login_screen.dart';
import 'package:lucky_draw_app/ui/screens/drawer/drawer.dart';
import 'package:lucky_draw_app/ui/screens/home/home_screen.dart';
import 'package:lucky_draw_app/ui/screens/my_cart/my_cart.dart';
import 'package:lucky_draw_app/ui/screens/product_detail/product_detail_screen.dart';
import 'package:lucky_draw_app/ui/screens/profile/my_profile.dart';
import 'package:lucky_draw_app/ui/screens/profile/personal_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corona Out',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Styles.appTheme.primaryColor,
      ),
      home:  const LoginScreen(),
    );
  }
}

final ZoomDrawerController z = ZoomDrawerController();

class Zoom extends StatefulWidget {
  const Zoom({Key? key}) : super(key: key);

  @override
  _ZoomState createState() => _ZoomState();
}

class _ZoomState extends State<Zoom> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 24,
      style: DrawerStyle.defaultStyle,
      openCurve: Curves.fastOutSlowIn,
        menuScreenWidth:MediaQuery.of(context).size.width,
      slideWidth: MediaQuery.of(context).size.width*0.65,
      duration: const Duration(milliseconds: 500),
      mainScreenScale: 0.4,
      menuBackgroundColor: MyColors.grey,
      mainScreen:  Body(),
      menuScreen: drawerScreen(context),
    );
  }
}


