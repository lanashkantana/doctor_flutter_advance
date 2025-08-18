import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p1/core/theming/app_colors.dart';
import 'package:p1/core/theming/styles.dart';
import 'package:p1/core/widgets/app_text_button.dart';
import 'package:p1/core/widgets/app_text_form_field.dart';
import 'package:p1/features/login/ui/widget/already_have_account.dart';
import 'package:p1/features/login/ui/widget/term_and_condition_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsecureText = true;
   final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: AppStyles.font24mainBlueBold),
                10.verticalSpace,
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: AppStyles.font14lighterGrayRegular
                ),
                36.verticalSpace,
                Form(
                  key: formKey,
                  child: Column(
                   
                    children: [
                      AppTextFormField(hintText: 'Email'),
              
                16.verticalSpace,
                AppTextFormField(
                  hintText: 'Password',
                  isObscureText: obsecureText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obsecureText = !obsecureText;
                      });
                    },

                    child: Icon(
                      obsecureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                20.verticalSpace,
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    "Forgot Password?",
                    style: AppStyles.font13moreGrayRegular.copyWith(
                      color: AppColors.mainBlue,
                    ),
                  ),
                ),
                32.verticalSpace,
                AppTextButton(
                  buttonText:"Login",
                  textStyle: AppStyles.font16whitesemiBold,
                  onPressed: () {},
                ),
                30.verticalSpace,
                
                TermsAndConditionsText(),
                24.verticalSpace,
                AlreadyHaveAccountText(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
