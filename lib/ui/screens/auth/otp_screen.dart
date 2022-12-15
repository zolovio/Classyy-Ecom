
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../data/controllers/home_controller.dart';
import '../../../data/values/values.dart';
import 'components/custom_app_bar.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({Key? key}) : super(key: key);

  final HomeController controller = Get.find();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: AppIcons.phoneIcon,
              ),
              const SizedBox(height: 10),
              Text(
                "Phone Verification",
                style: GoogleFonts.montserrat(
                  color: MyColors.blackColor,
                  fontSize: AppFontSize.fontSize20,
                  fontWeight: AppFontSize.weightW700,
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => Text(
                  controller.errorText.value,
                  style: GoogleFonts.montserrat(
                    color: MyColors.redColor,
                    fontSize: AppFontSize.fontSize15,
                    fontWeight: AppFontSize.weightW400,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Obx(
                () => Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 30),
                    child: PinCodeTextField(
                      appContext: context,
                      hintCharacter: "0",
                      hintStyle: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        fontSize: AppFontSize.fontSize20,
                        color: MyColors.greyColor,
                      ),
                      pastedTextStyle: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: AppFontSize.fontSize20,
                        color: (controller.hasError.isTrue)
                            ? MyColors.redColor
                            : MyColors.appMainColor,
                      ),
                      textStyle: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: AppFontSize.fontSize20,
                        color: (controller.hasError.isTrue)
                            ? MyColors.redColor
                            : MyColors.blackColor,
                      ),
                      length: 6,
                      obscureText: false,
                      obscuringCharacter: '*',
                      animationType: AnimationType.fade,
                      validator: (v) {
                        return null;
                      },
                      pinTheme: PinTheme(
                        activeColor: (controller.hasError.isTrue)
                            ? MyColors.redColor
                            : MyColors.otpCursorColor,
                        selectedColor: MyColors.appMainColor,
                        inactiveColor: (controller.hasError.isTrue)
                            ? MyColors.redColor
                            : MyColors.otpCursorColor,
                        errorBorderColor: (controller.hasError.isTrue)
                            ? MyColors.redColor
                            : MyColors.otpCursorColor,
                        shape: PinCodeFieldShape.underline,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 60,
                        fieldWidth: 50,
                      ),
                      cursorColor: MyColors.appMainColor,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: false,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      onCompleted: (v) {
                        if (textEditingController.text == "222222") {
                          controller.hasError.value = false;
                          controller.errorText.value = "";
                        } else {
                          controller.hasError.value = true;
                          controller.errorText.value = "Wrong OTP entered";
                        }
                      },
                      onChanged: (value) {},
                      beforeTextPaste: (text) {
                        return true;
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(23.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed("/forgotPass");
                  },
                  child: Text(
                    "Verify Now",
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
        ),
      ),
    );
  }
}
