import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/values/my_colors.dart';
import '../../../data/values/my_imgs.dart';


class TicketView extends StatelessWidget {


  const TicketView({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: Container(
        margin: EdgeInsets.only(top: 30.h,left: 30.h, right: 30.h),
        child: Column(

          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.asset(MyImgs.classyyPng),
                ],
              ),
            ),
            //Now showing the red Area of the Ticket
            Container(
              color: Colors.orange,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight:
                              Radius.circular(10),
                              bottomRight:
                              Radius.circular(10),
                            ))),
                  ),
                  Expanded(
                      child: LayoutBuilder(builder: (BuildContext context,
                          BoxConstraints constraints) {
                        print(
                            "The Width is ${constraints.constrainWidth()}");
                        return Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 26).floor(),
                                    (index) =>  Text("-", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold
                                ),)),
                          ),
                        );
                      })),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft:
                              Radius.circular(10),
                            ))),
                  ),
                ],
              ),
            ),
            //Now the Bottom Part of the Orange Card/Ticket
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("Product: ", style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black
                              ),),
                              Text("Classyy Shoe ", style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Image.asset(MyImgs.shoes, height: 50,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Purchased On: ", style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey
                      ),),
                      Text("05 Jan, 2022 12:00PM", style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade300
                      ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Coupon No: ", style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.black
                      ),),
                      Text("LK-20145-2014-12", style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: MyColors.primary
                      ),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
