import 'package:flutter/material.dart';
import 'package:p1/core/theming/app_colors.dart';

import '../../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: AppStyles.font13moreGrayRegular.copyWith(color:AppColors.blueMedium),
          ),
          TextSpan(text: ' Sign Up',  style: AppStyles.font13moreGrayRegular.copyWith(color:AppColors.mainBlue),),
        ],
      ),
    );
  }
}
