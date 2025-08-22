import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p1/core/theming/app_colors.dart';
import 'package:p1/core/theming/styles.dart';
import 'package:p1/core/widgets/app_text_button.dart';

import 'package:p1/features/login/logic/login_cubit/login_cubit.dart';
import 'package:p1/features/login/ui/widget/dont_have_account_text.dart';
import 'package:p1/features/login/ui/widget/email_and_password.dart';
import 'package:p1/features/login/ui/widget/login_bloc_listner.dart';
import 'package:p1/features/login/ui/widget/term_and_condition_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: AppStyles.font24mainBlueBold),
                10.verticalSpace,
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: AppStyles.font14lighterGrayRegular,
                ),
                36.verticalSpace,
                Column(
                  children: [
                    EmailAndPassword(),

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
                      buttonText: "Login",
                      textStyle: AppStyles.font16whitesemiBold,
                      onPressed: () {
                        validationsThenDoLogin(context);
                      },
                    ),
                    30.verticalSpace,

                    TermsAndConditionsText(),
                    24.verticalSpace,
                    DontHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validationsThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
    
      );
    }
  }
}
