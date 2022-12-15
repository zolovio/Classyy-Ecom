import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/ui/screens/drawer/drawer.dart';

import '../../../data/values/my_colors.dart';
import '../../../data/values/my_imgs.dart';

class WinnerScreen extends StatefulWidget {
  const WinnerScreen({Key? key}) : super(key: key);

  @override
  State<WinnerScreen> createState() => _WinnerScreenState();
}

class _WinnerScreenState extends State<WinnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.backGroundColor,
        leading:  GestureDetector(
            onTap: ()=>Get.to(drawerScreen(context)),
            child: Image.asset('assets/images/drawerIcon.png')),
        title: Text("Winner", style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black
        )),
        centerTitle: true,
      ),
      body: ScreenUtilInit(builder: (BuildContext context, Widget? child){
        return SafeArea(
          child: Column(
            children: [
              // appBar(context),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: offerItem(),
                        );
                      }),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget itemCard() {
    return Column(
      children: [
        Container(
          height: 130.h,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 16.h, right: 16.h),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(15.h))),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0x00000000).withOpacity(0.0),
                        const Color(0x00000000).withOpacity(0.017),
                        const Color(0x00000000).withOpacity(0.7),
                      ])),
              child: Padding(
                padding: EdgeInsets.all(8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("WIN: Iphone 14 Pro",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w900,
                            color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
            height: 80.h,
            margin: EdgeInsets.only(left: 16.h, right: 16.h),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: MyColors.primary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.h),
                  bottomRight: Radius.circular(16.h)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CLASSY CAP", style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                  ),),
                  Container(
                    height: 15.h,
                    width: 65.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100.h)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Buy @ ", style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                        ),),

                        Text("₹999", style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w700,
                            color: MyColors.primary
                        ),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    children: [
                      Text("121 ",
                          style: TextStyle(
                              fontFamily:
                              "Montserrat",
                              fontSize: 10.sp,
                              color: Colors.white,
                              fontWeight:
                              FontWeight.w700)),
                      Text("sold out of ",
                          style: TextStyle(
                              fontFamily:
                              "Montserrat",
                              fontSize: 10.sp,
                              color: Colors.white,
                              fontWeight:
                              FontWeight.w400)),
                      Text("200",
                          style: TextStyle(
                              fontFamily:
                              "Montserrat",
                              fontSize: 10.sp,
                              color: Colors.white,
                              fontWeight:
                              FontWeight.w700)),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget offerItem(){
    return Stack(
      children: [
        itemCard(),
        Positioned(
            bottom: 8.h,
            right: 30.h,
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Column(
                children: [
                  Container(
                      height: 72.h,
                      width: 72.w,
                      padding: EdgeInsets.all(8.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8.h))
                      ),
                      child: Image.asset(MyImgs.capImage, height: 23.h,)),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 29.h,
                    child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            backgroundColor:
                            Colors.white,
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(
                                    Radius.circular(
                                        100.h)))),
                        child: Text("Add to cart",
                            style: TextStyle(
                                fontFamily:
                                "Montserrat",
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight
                                    .bold))),
                  )

                ],
              ),
            ))
      ],
    );
  }

  Widget appBar(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: 25.h),
      child: Stack(
        children: [
          GestureDetector(
            onTap: (){
              Get.to(()=>drawerScreen(context));
            },
            child: Positioned(
              left: 20.h,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(MyImgs.box2),
                        SizedBox(
                          width: 3.h,
                        ),
                        SvgPicture.asset(MyImgs.box1),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(MyImgs.box1),
                        SizedBox(
                          width: 3.h,
                        ),
                        SvgPicture.asset(MyImgs.box2),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Winner", style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black
              )),
            ],
          )
        ],
      ),
    );
  }
}
