import 'package:filture_tube/core/app_route/app_route.dart';
import 'package:filture_tube/core/dependancyInjection/di.dart';
import 'package:filture_tube/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  DependancyInjection di = DependancyInjection();
  di.dependencies;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.whiteColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.whiteColor,
        systemNavigationBarIconBrightness: Brightness.dark
        ));
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.whiteColor,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          getPages: AppRoute.getPages,
          initialRoute: AppRoute.splashScreen,
        );
      },
    );
  }
}
