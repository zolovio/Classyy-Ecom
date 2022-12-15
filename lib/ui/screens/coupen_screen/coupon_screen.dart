import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/ui/screens/coupen_screen/ticket_view.dart';

import '../../../data/values/my_colors.dart';
import '../../../data/values/my_imgs.dart';
import '../drawer/drawer.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:  GestureDetector(
            onTap: ()=>Get.to(drawerScreen(context)),
            child: Image.asset('assets/images/drawerIcon.png')),
        title: Text("Coupons", style: TextStyle(
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index){
                      return Column(
                        children: [
                          const TicketView(),
                          Container(
                            height: 29.h,
                            child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    backgroundColor:
                                    MyColors.primary,
                                    side: BorderSide.none,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(
                                                100.h)))),
                                child: Text("Buy Now",
                                    style: TextStyle(
                                        fontFamily:
                                        "Montserrat",
                                        color: Colors.white,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight
                                            .bold))),
                          )
                        ],
                      );
                    }),
              ),





            ],
          ),
        );
      }),
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
