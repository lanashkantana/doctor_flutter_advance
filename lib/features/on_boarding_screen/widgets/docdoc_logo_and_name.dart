import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:p1/core/theming/styles.dart';

class DocdocLogoAndName extends StatelessWidget {
  const DocdocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
        10.horizontalSpace,
        Text("Docdoc", style: AppStyles.font24black700weight),
      ],
    );
  }
}
