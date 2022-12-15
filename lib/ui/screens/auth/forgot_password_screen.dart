import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../data/values/values.dart';
import 'components/custom_app_bar.dart';
import 'components/text_fields.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBGColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Text(
                  "Forgotten Password",
                  style: GoogleFonts.montserrat(
                    color: MyColors.blackColor,
                    fontSize: AppFontSize.fontSize25,
                    fontWeight: AppFontSize.weightBold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Provide your account email for which you want ",
                  style: GoogleFonts.montserrat(
                    color: MyColors.blackColor,
                    fontSize: AppFontSize.fontSize15,
                    fontWeight: AppFontSize.weightW400,
                  ),
                ),
                Text(
                  "to reset your password",
                  style: GoogleFonts.montserrat(
                    color: MyColors.blackColor,
                    fontSize: AppFontSize.fontSize15,
                    fontWeight: AppFontSize.weightW400,
                  ),
                ),
                const SizedBox(height: 20),
                AppTextFormFields(
                  controller: emailController,
                  fillColor: MyColors.whiteColor,
                  labelText: "Email",
                  textSize: AppFontSize.fontSize15,
                  prefixIcon: AppIcons.emailIconOutlined,
                ),
                const SizedBox(height: 40),
                Text(
                  "Verify your email address",
                  style: GoogleFonts.montserrat(
                    color: MyColors.blackColor,
                    fontSize: AppFontSize.fontSize20,
                    fontWeight: AppFontSize.weightW600,
                  ),
                ),
                const SizedBox(height: 80),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed("/cart");
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.montserrat(
                      color: MyColors.whiteColor,
                      fontSize: AppFontSize.fontSize20,
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
