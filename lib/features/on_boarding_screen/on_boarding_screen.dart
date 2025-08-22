import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p1/core/helper/extensions.dart';
import 'package:p1/core/routing/routes.dart';
import 'package:p1/core/theming/styles.dart';
import 'package:p1/core/widgets/app_text_button.dart';
import 'package:p1/features/on_boarding_screen/widgets/docdoc_logo_and_name.dart';
import 'package:p1/features/on_boarding_screen/widgets/doctor_image_text.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: Column(
              children: [
                DocdocLogoAndName(),
                30.verticalSpace,
                DoctorImageText(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: AppStyles.font13greyRegular,
                        textAlign: TextAlign.center,
                      ),
                      30.verticalSpace,
                    AppTextButton(buttonText: "Get Started", textStyle: AppStyles.font16whitesemiBold,

                     onPressed: (){
                      context.pushNamed(Routes.loginScreen);
                     })
                    ],
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
