
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:p1/core/theming/styles.dart';

class DoctorImageText extends StatelessWidget {
  const DoctorImageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg'),
    
    
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withValues(alpha: 0.0),
              ],
    
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
    
          child: Text(
            "Best Doctor\n Appointment App",
            textAlign: TextAlign.center,
    
            style: AppStyles.font32blueSimiBold.copyWith(
              height: 1.4,
            ),
          ),
        ),
                
      ],
    );
  }
}
