import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p1/core/theming/app_colors.dart';

import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Function(String?) validator;
  final TextEditingController controller;
 

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.errorBorder,
    this.focusedErrorBorder,
    required this.validator,
   required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppColors.mediumGray,
        filled: true,
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        errorBorder: errorBorder ?? outlineInputBorder(color: AppColors.red),
        focusedErrorBorder:
            focusedErrorBorder ?? outlineInputBorder(color: AppColors.red),
        focusedBorder:
            focusedBorder ?? outlineInputBorder(color: AppColors.mainBlue),
        enabledBorder:
            enabledBorder ?? outlineInputBorder(color: AppColors.morewGray),
        hintStyle: hintStyle ?? AppStyles.font14lighterGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,

      style:
          inputTextStyle ??
          AppStyles.font14lighterGrayRegular.copyWith(
            color: AppColors.blueMedium,
          ),
      validator: (value) {
        return validator(value);
      },
    );
  }

  OutlineInputBorder outlineInputBorder({required final Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.3),
      borderRadius: BorderRadius.circular(16.0),
    );
  }
}
