import 'package:flutter/material.dart';
import 'package:p1/core/theming/app_colors.dart';

import '../../../../../core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: AppStyles.font13moreGrayRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: AppStyles.font13moreGrayRegular.copyWith(color: AppColors.blueMedium),
          ),
          TextSpan(
            text: ' and',
            style: AppStyles.font13moreGrayRegular,
          ),
          TextSpan(
            text: ' Privacy Policy',
             style: AppStyles.font13moreGrayRegular.copyWith(height: 1.5,color: AppColors.blueMedium),
          ),
        ],
      ),
    );
  }
}