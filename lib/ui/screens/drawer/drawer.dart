import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/data/values/values.dart';

import '../../../data/controllers/drawer_controller.dart';
import '../../../main.dart';

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
                                drawerController.closeDrawer();
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
                              Text(
                                'Settings',
                                style: Styles.appTheme.textTheme.headline4
                                    ?.copyWith(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Notifications',
                                style: Styles.appTheme.textTheme.headline4
                                    ?.copyWith(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'My Cart',
                                style: Styles.appTheme.textTheme.headline4
                                    ?.copyWith(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Winner',
                                style: Styles.appTheme.textTheme.headline4
                                    ?.copyWith(color: Colors.white),
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
                            onPressed: () {},
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

