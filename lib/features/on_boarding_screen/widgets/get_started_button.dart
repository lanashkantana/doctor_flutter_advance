
import 'package:flutter/material.dart';
import 'package:p1/core/helper/extensions.dart';
import 'package:p1/core/routing/routes.dart';
import 'package:p1/core/theming/app_colors.dart';
import 'package:p1/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      style: ButtonStyle(
       backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
       minimumSize: WidgetStateProperty.all(
    
    Size(double.infinity,52),
    
       ),
       shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))
    
    
       
      ),
      onPressed: () {
        context.pushReplacementNamed(Routes.loginScreen);
      },
    
      child: Text(
        "Get Started",
        style: AppStyles.font16whitesemiBold,
      ),
    );
  }
}
