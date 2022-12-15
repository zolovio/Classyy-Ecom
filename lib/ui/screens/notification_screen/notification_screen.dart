import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/values/my_colors.dart';
import '../../../data/values/my_imgs.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBar(),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5.h),
                  decoration: BoxDecoration(
                    color: MyColors.primary,
                    borderRadius: BorderRadius.all(Radius.circular(100.h)),
                  ),
                  child: Text("Mark all as read",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ),
                SizedBox(width: 15.h,)
              ],
            ),
            SizedBox(height: 6.h,),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 7,
                  itemBuilder: (context, index){
                    return Container(
                      height: 85.h,
                      margin: EdgeInsets.only(left: 15.h, right: 15.h, top: 8.h),
                      padding: EdgeInsets.only(left: 15.h, right: 15.h),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(9.h)),
                      ),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 16.h,
                                    width: 40.h,
                                    decoration: BoxDecoration(
                                      color: MyColors.primary,
                                      borderRadius: BorderRadius.all(Radius.circular(100.h)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("New",
                                            style: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 10,),
                              Text("Closing in 4 Hours", style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),

                              Text("Win a ola Electric Bike", style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500

                              ),),
                              Text("Buy Classyy Jeans and get a chance!", style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              ),),
                              Text("Buy Classyy Jeans and get a chance!", style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 60.h,
                            width: 60.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(100))
                            ),
                            child: Image.asset(MyImgs.bike, height: 30.h,),
                          )
                        ],
                      ),
                    );
                  }),
            )

          ],
        ),
      ),
    );
  }


  Widget appBar(){
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
