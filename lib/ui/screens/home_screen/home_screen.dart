import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lucky_draw_app/data/values/my_imgs.dart';
import 'package:lucky_draw_app/ui/screens/product_detail/product_detail_screen.dart';
import '../../../data/values/my_colors.dart';
import '../drawer/drawer.dart';
import 'home_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: MyColors.backGroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 80.h),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(18.h),
                        child: appBar(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 220.h,
                        child: PageView.builder(
                            onPageChanged: (index) {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            controller: PageController(),
                            itemCount: bannerList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                height: 220.h,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 165.h,
                                      color: Colors.transparent,
                                      child: Stack(
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Image.asset(MyImgs.bike)),
                                          Positioned(
                                              bottom: 10,
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 70.h),
                                                    child: Image.asset(
                                                        height: 140.h,
                                                        width: 75.h,
                                                        MyImgs.pents),
                                                  ),
                                                ],
                                              ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 18.h,
                                          right: 18.h,
                                          bottom: 18.h),
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                            const Color(0x00000000)
                                                .withOpacity(0.0),
                                            const Color(0x00000000)
                                                .withOpacity(0.017),
                                            const Color(0x00000000)
                                                .withOpacity(0.7),
                                          ])),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 7.h),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  bannerList[index].title ??
                                                      "Buy CLASSYY JEANS",
                                                  style: TextStyle(
                                                      fontFamily: "Montserrat",
                                                      fontSize: 16.sp,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  bannerList[index].chance ??
                                                      "Get a chance to win Royal Enfield",
                                                  style: TextStyle(
                                                    fontFamily: "Montserrat",
                                                    fontSize: 11.sp,
                                                    color: MyColors.primary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 8.h),
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
                                                child: Text("  Shop  ",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "Montserrat",
                                                        color: Colors.black,
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                                bannerList.length,
                                (index) => Indicator(
                                    isActive: _selectedIndex == index
                                        ? true
                                        : false)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.h),
                        child: Row(
                          children: [
                            Text("Closing Soon",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: 130.h,
                        padding: EdgeInsets.only(right: 16.h),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 130.h,
                                width: 245.h,
                                margin: EdgeInsets.only(left: 16.h),
                                decoration: BoxDecoration(
                                  color: MyColors.soldItemContainerBG,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.h)),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                        width: 120,
                                        padding: EdgeInsets.only(
                                            top: 16.h, right: 3.h),
                                        child: Image.asset(MyImgs.shoes)),
                                    SizedBox(
                                      width: 3.h,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 6.h, right: 6.h, bottom: 6.h),
                                      padding: EdgeInsets.all(6.h),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.h))),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 40.h,
                                              child: Text(
                                                "Classyy Shoes",
                                                style: TextStyle(
                                                    fontFamily: "Montserrat",
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text("Prize: ",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "Montserrat",
                                                        fontSize: 10.sp,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("Pulsar 200NS",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "Montserrat",
                                                        fontSize: 10.sp,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 4.h,
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
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                Text("sold out of ",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "Montserrat",
                                                        fontSize: 10.sp,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                Text("200",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "Montserrat",
                                                        fontSize: 10.sp,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Image.asset(
                                                width: 110.h, MyImgs.divider),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Container(
                                              height: 20.h,
                                              child: OutlinedButton(
                                                  onPressed: () {},
                                                  style: OutlinedButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.black,
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
                                                          color: Colors.white,
                                                          fontSize: 8.sp,
                                                          fontWeight: FontWeight
                                                              .bold))),
                                            )
                                          ]),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Stack(
                        children: [
                          winContainer(),
                          Positioned(
                            right: 40,
                            child: Image.asset(height: 90.h, MyImgs.winBike),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                            itemCount: 3,
                            itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: offerItem(),
                          );
                        }),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget winContainer() {
    return Container(
      height: 100.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 64.h,
            margin: EdgeInsets.only(left: 16.h, right: 16.h),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: MyColors.primary,
                borderRadius: BorderRadius.all(Radius.circular(15.h))),
            child: Padding(
              padding: EdgeInsets.all(10.h),
              child: Row(
                children: [Image.asset(MyImgs.winFrame)],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container appBar() {
    return Container(
      height: 60.h,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Get.to(drawerScreen(context));
            },
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
          Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Hello, ",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 20.sp,
                    ),
                  ),
                  Text(
                    "Manish Kumar!",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: MyColors.primary),
                  ),
                ],
              ),
              Center(
                child: Text(
                  "Let’s shop & win.",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.grey,
                      fontSize: 14.sp),
                ),
              )
            ],
          ),
          CircleAvatar(
            child: Image.asset(height: 40.h, MyImgs.manish),
          )
        ],
      ),
    );
  }

  Widget bannerSlider() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220.h,
      child: Stack(
        children: [
          bikeContainer(),
          gradientBox(),
        ],
      ),
    );
  }

  Widget bikeContainer() {
    return Container(
      height: 165.h,
      color: Colors.transparent,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset(height: 150, MyImgs.bike)),
          Positioned(
              bottom: 10,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 70.h),
                    child:
                        Image.asset(height: 140.h, width: 75.h, MyImgs.pents),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget gradientBox() {
    return Container(
      padding: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 18.h),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            const Color(0x00000000).withOpacity(0.0),
            const Color(0x00000000).withOpacity(0.017),
            const Color(0x00000000).withOpacity(0.7),
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 7.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Buy CLASSYY JEANS",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Get a chance to win Royal Enfield",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 11.sp,
                    color: MyColors.primary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.h),
            child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(100.h)))),
                child: Text("  Shop  ",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold))),
          )
        ],
      ),
    );
  }

  Widget offerItem(){
    return GestureDetector(
      onTap: (){
        Get.to(const ProductDetailScreen());
      },
      child: Stack(
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
      ),
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
}

class Indicator extends StatelessWidget {
  final bool isActive;

  const Indicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        height: 4.0,
        width: isActive ? 30.0 : 12,
        decoration: BoxDecoration(
            color: isActive ? MyColors.primary : Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(8.0))),
      ),
    );
  }
}
