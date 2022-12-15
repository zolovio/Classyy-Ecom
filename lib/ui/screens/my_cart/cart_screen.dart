
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucky_draw_app/ui/screens/drawer/drawer.dart';

import '../../../data/values/values.dart';
import '../auth/components/text_fields.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBGColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: (){

            Get.to(()=>drawerScreen(context));
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: AppIcons.cartScreenIconOutlined,
          ),
        ),
        title: Text(
          "My Cart",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            color: MyColors.blackColor,
            fontSize: AppFontSize.fontSize20,
            fontWeight: AppFontSize.weightW700,
          ),
        ),
        backgroundColor: MyColors.appBGColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DELIVERY DETAILS",
                  style: GoogleFonts.montserrat(
                    color: MyColors.appMainColor,
                    fontSize: AppFontSize.fontSize20,
                    fontWeight: AppFontSize.weightW700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 8.0),
                  child: ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: AppIcons.locationOnGreyIcon,
                    title: Text(
                      "3000 20th St(at florida St),San francisco",
                      style: GoogleFonts.montserrat(
                        color: MyColors.black87Color,
                        fontSize: AppFontSize.fontSize16,
                        fontWeight: AppFontSize.weightW400,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: AppIcons.phoneGreyIconOutlined,
                    title: Text(
                      "(603) 555-0123",
                      style: GoogleFonts.montserrat(
                        color: MyColors.black87Color,
                        fontSize: AppFontSize.fontSize16,
                        fontWeight: AppFontSize.weightW400,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "ORDER LIST",
                    style: GoogleFonts.montserrat(
                      color: MyColors.appMainColor,
                      fontSize: AppFontSize.fontSize18,
                      fontWeight: AppFontSize.weightW700,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/images/shirt.png",
                        width: 40,
                        height: 49,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CLASSYY HOODIE",
                                style: GoogleFonts.montserrat(
                                  color: MyColors.blackColor,
                                  fontSize: AppFontSize.fontSize15,
                                  fontWeight: AppFontSize.weightW700,
                                ),
                              ),
                              Text(
                                "Royal Enfield Classic",
                                style: GoogleFonts.montserrat(
                                  color: MyColors.blackColor,
                                  fontSize: AppFontSize.fontSize13,
                                  fontWeight: AppFontSize.weightW500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "INR 1999",
                                style: GoogleFonts.montserrat(
                                  color: MyColors.appMainColor,
                                  fontSize: AppFontSize.fontSize21,
                                  fontWeight: AppFontSize.weightW900,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              AppIcons.addCircleIcon,
                              const SizedBox(height: 10),
                              Text(
                                "2",
                                style: GoogleFonts.montserrat(
                                  color: MyColors.blackColor,
                                  fontSize: AppFontSize.fontSize17,
                                  fontWeight: AppFontSize.weightW700,
                                ),
                              ),
                              const SizedBox(height: 10),
                              AppIcons.removeCircleIcon,
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset("assets/images/shirt.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/images/shirt.png",
                        width: 40,
                        height: 49,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CLASSYY HOODIE",
                                style: GoogleFonts.montserrat(
                                  color: MyColors.blackColor,
                                  fontSize: AppFontSize.fontSize15,
                                  fontWeight: AppFontSize.weightW700,
                                ),
                              ),
                              Text(
                                "Royal Enfield Classic",
                                style: GoogleFonts.montserrat(
                                  color: MyColors.blackColor,
                                  fontSize: AppFontSize.fontSize13,
                                  fontWeight: AppFontSize.weightW500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "INR 1999",
                                style: GoogleFonts.montserrat(
                                  color: MyColors.appMainColor,
                                  fontSize: AppFontSize.fontSize21,
                                  fontWeight: AppFontSize.weightW900,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              AppIcons.addCircleIcon,
                              const SizedBox(height: 10),
                              Text(
                                "2",
                                style: GoogleFonts.montserrat(
                                  color: MyColors.blackColor,
                                  fontSize: AppFontSize.fontSize17,
                                  fontWeight: AppFontSize.weightW700,
                                ),
                              ),
                              const SizedBox(height: 10),
                              AppIcons.removeCircleIcon,
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset("assets/images/shirt.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: AppTextFormFields(
                        controller: controller,
                        fillColor: MyColors.blackColor.withOpacity(0.4),
                        labelText: "Enter Promo Code",
                        textSize: AppFontSize.fontSize15,
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Apply",
                        style: GoogleFonts.montserrat(
                          color: MyColors.whiteColor,
                          fontSize: AppFontSize.fontSize16,
                          fontWeight: AppFontSize.weightBold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, bottom: 8.0),
                  child: Text(
                    "ORDER SUMMARY",
                    style: GoogleFonts.montserrat(
                      color: MyColors.appMainColor,
                      fontSize: AppFontSize.fontSize18,
                      fontWeight: AppFontSize.weightW700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "Order Amount",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize15,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              ":",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize15,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "70.000",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize15,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "Delivery Fee",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize15,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              ":",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize15,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "6.000",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize15,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              "Discount",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize15,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              ":",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize15,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "-10.000",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize15,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Amount",
                                  style: GoogleFonts.montserrat(
                                    color: MyColors.blackColor,
                                    fontSize: AppFontSize.fontSize18,
                                    fontWeight: AppFontSize.weightW700,
                                  ),
                                ),
                                Text(
                                  "(Tax Included)",
                                  style: GoogleFonts.montserrat(
                                    color: MyColors.greyColor,
                                    fontSize: AppFontSize.fontSize12,
                                    fontWeight: AppFontSize.weightW500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              ":",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize18,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "INR 3998",
                              style: GoogleFonts.montserrat(
                                color: MyColors.blackColor,
                                fontSize: AppFontSize.fontSize18,
                                fontWeight: AppFontSize.weightW700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total ",
                                  style: GoogleFonts.montserrat(
                                    color: MyColors.blackColor,
                                    fontSize: AppFontSize.fontSize30,
                                    fontWeight: AppFontSize.weightW700,
                                  ),
                                ),
                                Text(
                                  "INR 3999",
                                  style: GoogleFonts.montserrat(
                                    color: MyColors.blackColor,
                                    fontSize: AppFontSize.fontSize20,
                                    fontWeight: AppFontSize.weightW700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Payment",
                                style: GoogleFonts.montserrat(
                                  color: MyColors.whiteColor,
                                  fontSize: AppFontSize.fontSize18,
                                  fontWeight: AppFontSize.weightBold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
