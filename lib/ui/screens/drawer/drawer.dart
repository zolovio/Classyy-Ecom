import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/data/values/values.dart';
import 'package:lucky_draw_app/ui/screens/auth/login_screen.dart';
import 'package:lucky_draw_app/ui/screens/my_cart/my_cart.dart';
import 'package:lucky_draw_app/ui/screens/notification_screen/notification_screen.dart';
import 'package:lucky_draw_app/ui/screens/profile/my_profile.dart';
import 'package:lucky_draw_app/ui/screens/winner_screen/winner_screen.dart';

import '../../../data/controllers/drawer_controller.dart';
import '../../../main.dart';
import '../my_cart/cart_screen.dart';

// class DrawerScreen extends StatelessWidget {
//   const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget drawerScreen(BuildContext context) {
    DrawerControl drawerController=Get.put(DrawerControl());
    return Theme(
      data: ThemeData.dark(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: MyColors.primary,
          body: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                 Container(
                                    width: 68.0,
                                    height: 68.0,
                                    decoration:  const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image:  DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/images/profile.png")
                                        )
                                    )),
                                const SizedBox(width: 10,),
                                Text("Manish Kumar",
                                style: Styles.appTheme.textTheme.headline4?.copyWith(color: Colors.white),
                                ),

                              ],
                            ),
                            MaterialButton(
                              elevation: 0.2,
                              onPressed: () {
                                Get.back();
                               // drawerController.closeDrawer();
                                //z.close!();
                              },
                              color: Colors.orangeAccent.withOpacity(0.8),
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(8),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.close,
                                size: 26,
                              ),
                            )

                          ],
                        ),

                        const SizedBox(height: 60,),

                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Get.to(const MyProfileScreen());
                                },
                                child: Text(
                                  'Settings',
                                  style: Styles.appTheme.textTheme.headline4
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.to(const NotificationScreen());
                                },
                                child: Text(
                                  'Notifications',
                                  style: Styles.appTheme.textTheme.headline4
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.to( CartScreen());
                                },
                                child: Text(
                                  'My Cart',
                                  style: Styles.appTheme.textTheme.headline4
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.to(const WinnerScreen());
                                },
                                child: Text(
                                  'Winner',
                                  style: Styles.appTheme.textTheme.headline4
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                            ]),
                      ],
                    ),

                    const SizedBox(
                      height: 0,
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30), // <-- Radius
                              ),
                            ),
                            onPressed: () {
                              Get.to(const LoginScreen());
                            },
                            child: Text(
                              "Log out",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: MyColors.primary,
                              fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                            ),

                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ])),
        ),
      ),
    );
  }

