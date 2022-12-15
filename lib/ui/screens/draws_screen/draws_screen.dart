import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/ui/screens/drawer/drawer.dart';

import '../../../data/values/my_colors.dart';
import '../../../data/values/my_imgs.dart';

class DrawsScreen extends StatefulWidget {
  const DrawsScreen({Key? key}) : super(key: key);

  @override
  State<DrawsScreen> createState() => _DrawsScreenState();
}

class _DrawsScreenState extends State<DrawsScreen> with TickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 2, vsync: this);


    return Scaffold(
      backgroundColor: MyColors.backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.backGroundColor,
        leading:  GestureDetector(
            onTap: ()=>Get.to(drawerScreen(context)),
            child: Image.asset('assets/images/drawerIcon.png')),
      ),
      body: ScreenUtilInit(builder: (BuildContext context, Widget? child){
        return SafeArea(
          child: Column(
            children: [

              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.all(4.h),
                decoration: BoxDecoration(
                  color: Color(0xffd9d9d9),
                  borderRadius: BorderRadius.all(Radius.circular(50.h)),
                ),
                child: Container(
                  child: TabBar(
                    unselectedLabelColor: Colors.white.withOpacity(0.38),
                    unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontFamily: "Montserrat",
                    ),
                    controller: tabController,
                    labelColor: MyColors.primary,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: MyColors.primary,
                      fontFamily: "Montserrat",
                    ),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.h),
                        color: Colors.white
                    ),
                    isScrollable: true,
                    labelPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                    tabs: [
                      Text("Upcoming Draws"),
                      Text("Past Draws"),
                    ],
                  ),
                ),
              ),
              Expanded(child: TabBarView(
                  controller: tabController,
                  children: [
                    ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index){
                          return itemCard();
                        }),
                    ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index){
                          return itemCard();
                        }),
                  ]))

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
          child: Stack(
            children: [
              Container(
                height: 130.h,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(MyImgs.capImage,),
              ),

              gradientBox()
            ],
          ),
        ),
        Container(
            height: 70.h,
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
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("IPHONE 14", style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                      ),),
                      SizedBox(height: 5.h,),
                      Text("CLASSYY CAP", style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),),
                      SizedBox(height: 3.h,),
                      Text("Draw Date: October 18, 2022 12:12 PM",
                          style: TextStyle(
                              fontFamily:
                              "Montserrat",
                              fontSize: 8.sp,
                              color: Colors.white,
                              fontWeight:
                              FontWeight.w700)),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 29.h,
                        width: 100.w,
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
                            child: Text("Watch",
                                style: TextStyle(
                                    fontFamily:
                                    "Montserrat",
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight
                                        .bold))),
                      )
                    ],
                  )
                ],
              ),
            )),
      ],
    );
  }


  Widget gradientBox() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0x00000000).withOpacity(0.0),
                const Color(0x00000000).withOpacity(0.017),
                const Color(0x00000000).withOpacity(0.7),
              ])),

    );
  }

  Widget appBar(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: 25.h),
      child: Stack(
        children: [
          Positioned(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("", style: TextStyle(
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
