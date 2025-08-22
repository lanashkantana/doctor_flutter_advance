import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p1/features/login/ui/widget/term_and_condition_text.dart';
import 'package:p1/features/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:p1/features/sign_up/ui/widgets/already_have_account.dart';
import 'package:p1/features/sign_up/ui/widgets/sign_up_bloc_listner.dart';
import 'package:p1/features/sign_up/ui/widgets/sign_up_form.dart';


import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: AppStyles.font24BlueBold,
                ),
              8.verticalSpace,
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppStyles.font14GrayRegular,
                ),
               36.verticalSpace,
                Column(
                  children: [
                    const SignupForm(),
                    
                    
                    40.verticalSpace,
                    
                          AppTextButton(
                      buttonText: "Create Account",
                      textStyle: AppStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    16.verticalSpace,
                    const TermsAndConditionsText(),
                    30.verticalSpace,
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitregisterStates();
    }
  }
}