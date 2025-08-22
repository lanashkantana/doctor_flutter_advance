import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p1/core/di/depedency_injection.dart';
import 'package:p1/core/routing/app_router.dart';
import 'package:p1/doc_app.dart';

void main() async{
   setupGetIt();
   //to fix debug hiidden text in screenutil in realse mode
   await ScreenUtil.ensureScreenSize();
  
  runApp(DocApp(appRouter: AppRouter()));
}
