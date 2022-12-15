import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucky_draw_app/data/values/font_sizes.dart';

import '../../../data/controllers/home_controller.dart';
import '../../../data/values/app_icons.dart';
import '../../../data/values/values.dart';
import 'components/custom_app_bar.dart';
import 'components/text_fields.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController homeController = TextEditingController();
  final TextEditingController localityController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBGColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextFormFields(
                  controller: nameController,
                  fillColor: MyColors.whiteColor,
                  labelText: "Name",
                  textSize: AppFontSize.fontSize15,
                  prefixIcon: AppIcons.personIconOutlined,
                ),
                const SizedBox(height: 20),
                AppTextFormFields(
                  controller: passwordController,
                  fillColor: MyColors.whiteColor,
                  labelText: "Password",
                  textSize: AppFontSize.fontSize15,
                  prefixIcon: AppIcons.passwordIconOutlined,
                  suffixIcon: AppIcons.visibilityIconOutlined,
                ),
                const SizedBox(height: 20),
                AppTextFormFields(
                  controller: emailController,
                  fillColor: MyColors.whiteColor,
                  labelText: "Email",
                  textSize: AppFontSize.fontSize15,
                  prefixIcon: AppIcons.emailIconOutlined,
                ),
                const SizedBox(height: 20),
                AppTextFormFields(
                  controller: phoneController,
                  fillColor: MyColors.whiteColor,
                  labelText: "Phone Number",
                  textSize: AppFontSize.fontSize15,
                  prefixIcon: AppIcons.phoneIconOutlined,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: MyColors.whiteColor,
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.0),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: MyColors.appBGColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              AppTextFormFields(
                                controller: addressController,
                                fillColor: MyColors.whiteColor,
                                labelText: "Location",
                                textSize: AppFontSize.fontSize15,
                                prefixIcon: AppIcons.locationOnIcon,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormFields(
                                controller: homeController,
                                fillColor: MyColors.whiteColor,
                                labelText: "Home",
                                textSize: AppFontSize.fontSize15,
                                prefixIcon: AppIcons.homeIconOutlined,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormFields(
                                controller: localityController,
                                fillColor: MyColors.whiteColor,
                                labelText: "Locality",
                                textSize: AppFontSize.fontSize15,
                                prefixIcon: AppIcons.localityIconOutlined,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormFields(
                                controller: cityController,
                                fillColor: MyColors.whiteColor,
                                labelText: "City",
                                textSize: AppFontSize.fontSize15,
                                prefixIcon: AppIcons.cityIconOutlined,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormFields(
                                controller: countryController,
                                fillColor: MyColors.whiteColor,
                                labelText: "Country",
                                textSize: AppFontSize.fontSize15,
                                prefixIcon: AppIcons.countryIconOutlined,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormFields(
                                controller: pinCodeController,
                                fillColor: MyColors.whiteColor,
                                labelText: "Pin Code",
                                textSize: AppFontSize.fontSize15,
                                prefixIcon: AppIcons.pinCodeIconOutlined,
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Submit",
                                  style: GoogleFonts.montserrat(
                                    color: MyColors.whiteColor,
                                    fontSize: AppFontSize.fontSize18,
                                    fontWeight: AppFontSize.weightBold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      AppIcons.addressIconOutlined,
                      const SizedBox(width: 10),
                      Text(
                        "Address",
                        style: GoogleFonts.montserrat(
                          color: MyColors.greyColor,
                          fontSize: AppFontSize.fontSize15,
                          fontWeight: AppFontSize.weightNormal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed("/otpScreen");
                  },
                  child: Text(
                    "Signup",
                    style: GoogleFonts.montserrat(
                      color: MyColors.whiteColor,
                      fontSize: AppFontSize.fontSize18,
                      fontWeight: AppFontSize.weightBold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Already a customer?",
                    style: GoogleFonts.montserrat(
                      color: MyColors.appMainColor,
                      fontSize: AppFontSize.fontSize14,
                      fontWeight: AppFontSize.weightW500,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: GoogleFonts.montserrat(
                      color: MyColors.whiteColor,
                      fontSize: AppFontSize.fontSize18,
                      fontWeight: AppFontSize.weightBold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
