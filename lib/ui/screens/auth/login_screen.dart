import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/data/values/my_colors.dart';
import 'package:lucky_draw_app/data/values/my_imgs.dart';
import 'package:lucky_draw_app/ui/screens/auth/forgot_password_screen.dart';
import 'package:lucky_draw_app/ui/screens/auth/otp_screen.dart';
import 'package:lucky_draw_app/ui/screens/auth/signup_screen.dart';

import '../bottom_navbar/bottom_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userEmailController = TextEditingController();
  bool isEmail = false;
  bool isPassword = false;


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    var smallDevice = height <= 700;
    print("Screen Height: $height");
    print("Screen Width: $width");
    return smallDevice ? ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return SafeArea(
          child: Scaffold(
            backgroundColor: MyColors.backGroundColor,
            body: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Stack(
                      children: [
                        SizedBox(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            height: 175.h,
                            child: SvgPicture.asset(
                              MyImgs.halfCircle, fit: BoxFit.cover,)),
                        Positioned(

                          child: Container(
                            height: 175.w,
                            color: Colors.transparent,
                            padding: EdgeInsets.only(
                                left: 30.w, right: 30.w),
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: SvgPicture.asset(MyImgs.classyySvg),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.w,
                ),
                _emailField(),
                SizedBox(
                  height: 15.w,
                ),
                _passwordField(),
                SizedBox(
                  height: 15.w,
                ),
                SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(ForgotPasswordScreen());
                    },
                    child: Center(child: Text(
                        "Forgot Password?", style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.grey,
                        fontFamily: "Montserrat"
                    ))),
                  ),
                ),
                SizedBox(height: 15.w,),
                SizedBox(
                  height: 40.h,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Padding(
                    padding: EdgeInsets.only(left: 18.w, right: 18.w),
                    child: OutlinedButton(onPressed: () {
                      Get.to(const BottomScreen());
                    },
                      style: OutlinedButton.styleFrom(
                          backgroundColor: MyColors.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(25.w)))
                      ),
                      child: Text("Login", style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),),
                  ),
                ),
                SizedBox(height: 20.w,),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Row(
                      children: [
                        const Expanded(child: Divider(
                          height: 2, thickness: 1, color: Colors.black,)),
                        Text(" OR ", style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: "Montserrat",
                            color: Colors.black
                        ),),
                        Expanded(child: Divider(
                          height: 2, thickness: 1, color: Colors.black,)),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.w,),
                Container(
                  height: 50.h,
                  margin: EdgeInsets.only(left: 40.w, right: 40.w),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      color: MyColors.socialButtonBG,
                      borderRadius: BorderRadius.all(Radius.circular(15.w))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(height: 20.w, MyImgs.google),
                      SizedBox(width: 5.w,),
                      Text("Login with Google", style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                          color: Colors.black
                      ),)
                    ],
                  ),
                ), SizedBox(height: 15.w,),
                Container(
                  height: 50.h,
                  margin: EdgeInsets.only(left: 40.w, right: 40.w),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      color: MyColors.socialButtonBG,
                      borderRadius: BorderRadius.all(Radius.circular(15.w))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(height: 20.w, MyImgs.phone),
                      SizedBox(width: 5.w,),
                      GestureDetector(

                        child: Text("Login with Phone Number", style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            color: Colors.black
                        ),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.w,),
                Container(
                  height: 50.h,
                  margin: EdgeInsets.only(left: 40.w, right: 40.w),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      color: MyColors.socialButtonBG,
                      borderRadius: BorderRadius.all(Radius.circular(15.w))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(height: 20.w, MyImgs.mail),
                      SizedBox(width: 5.w,),
                      Text("Login with Email", style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                          color: Colors.black
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 10.w,),
                GestureDetector(
                  onTap: (){
                    Get.to(SignUpScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn't have an account ?", style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: "Montserrat",
                          color: Colors.grey
                      ),),
                      SizedBox(width: 10.w,),
                      Text("Sign-Up", style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: MyColors.primary
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 10.w,)
              ],
            ),
          )
      );
    }) :
    ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return SafeArea(
          child: Scaffold(
            backgroundColor: MyColors.backGroundColor,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        SizedBox(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            height: 185.h,
                            child: SvgPicture.asset(
                              MyImgs.halfCircle, fit: BoxFit.cover,)),
                        Positioned(

                          child: Container(
                            height: 175.w,
                            color: Colors.transparent,
                            padding: EdgeInsets.only(
                                left: 30.w, right: 30.w),
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: SvgPicture.asset(MyImgs.classyySvg),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45.w,
                  ),
                  _emailField(),
                  SizedBox(
                    height: 15.w,
                  ),
                  _passwordField(),
                  SizedBox(
                    height: 15.w,
                  ),
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(ForgotPasswordScreen());
                      },
                      child: Center(child: Text(
                          "Forgot Password?", style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.grey,
                          fontFamily: "Montserrat"
                      ))),
                    ),
                  ),
                  SizedBox(height: 15.w,),
                  SizedBox(
                    height: 40.h,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Padding(
                      padding: EdgeInsets.only(left: 18.w, right: 18.w),
                      child: OutlinedButton(onPressed: () {
                        Get.to(const BottomScreen());
                      },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: MyColors.primary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(25.w)))
                        ),
                        child: Text("Login", style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),),
                    ),
                  ),
                  SizedBox(height: 20.w,),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: Row(
                        children: [
                          const Expanded(child: Divider(
                            height: 2, thickness: 1, color: Colors.black,)),
                          Text(" OR ", style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: "Montserrat",
                              color: Colors.black
                          ),),
                          Expanded(child: Divider(
                            height: 2, thickness: 1, color: Colors.black,)),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.w,),
                  Container(
                    height: 50.h,
                    margin: EdgeInsets.only(left: 40.w, right: 40.w),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                        color: MyColors.socialButtonBG,
                        borderRadius: BorderRadius.all(Radius.circular(15.w))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(height: 20.w, MyImgs.google),
                        SizedBox(width: 5.w,),
                        Text("Login with Google", style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            color: Colors.black
                        ),)
                      ],
                    ),
                  ), SizedBox(height: 15.w,),
                  GestureDetector(
                    onTap: () {
                      Get.to(OTPScreen());
                    },
                    child: Container(
                      height: 50.h,
                      margin: EdgeInsets.only(left: 40.w, right: 40.w),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: BoxDecoration(
                          color: MyColors.socialButtonBG,
                          borderRadius: BorderRadius.all(Radius.circular(15.w))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(height: 20.w, MyImgs.phone),
                          SizedBox(width: 5.w,),
                          Text("Login with Phone", style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                              color: Colors.black
                          ),)
                        ],
                      ),
                    ),
                  ), SizedBox(height: 15.w,),
                  Container(
                    height: 50.h,
                    margin: EdgeInsets.only(left: 40.w, right: 40.w),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                        color: MyColors.socialButtonBG,
                        borderRadius: BorderRadius.all(Radius.circular(15.w))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(height: 20.w, MyImgs.mail),
                        SizedBox(width: 5.w,),
                        Text("Login with Email", style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            color: Colors.black
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10.w,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn't have an account ?", style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: "Montserrat",
                          color: Colors.grey
                      ),),
                      SizedBox(width: 10.w,),
                      GestureDetector(
                        onTap: () {
                          Get.to(SignUpScreen());
                        },
                        child: Text("Sign-Up", style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: MyColors.primary
                        ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10.w,)
                ],
              ),
            ),
          )
      );
    });
  }

  Widget _emailField(){
    return Container(
      height: 50.w,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 18.w, right: 18.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 8,
            blurRadius: 8,
            offset: Offset(1,6), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, bottom: 10),
            child: SvgPicture.asset(MyImgs.personSvg)
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: TextField(
              enableInteractiveSelection: true,
              controller: userEmailController,
              cursorHeight: 15.h,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                labelText: 'Name',
                labelStyle: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: 'Montserrat',
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _passwordField(){
    return Container(
      height: 50.w,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 18.w, right: 18.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 8,
            blurRadius: 8,
            offset: Offset(1,6), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              margin: const EdgeInsets.only(left: 15, bottom: 10),
              child: SvgPicture.asset(MyImgs.personSvg)
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: TextField(

              controller: userEmailController,
              cursorHeight: 15.h,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: 'Montserrat',
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

