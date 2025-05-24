import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_services/core/di/injection_container.dart';
import 'package:music_services/core/routes/app_router.dart';
import 'package:music_services/core/routes/navigator_services.dart';
import 'package:music_services/core/routes/routes.dart';
import 'package:music_services/core/theme/app_colors.dart';
import 'package:music_services/core/theme/app_text.dart';
import 'package:music_services/firebase_options.dart';
import 'package:music_services/viewmodel/service_viewmodel.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => locator<ServiceViewModel>()),
      ],

      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:
          (_, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: NavigationService.navigatorKey,
            title: 'Music Services',
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.appBackgroundColor,
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                selectedItemColor: Colors.white,
                unselectedItemColor: AppColors.iconColor,
                selectedLabelStyle: AppText.syne11Reqular.copyWith(
                  color: AppColors.iconColor,
                ),
                unselectedLabelStyle: AppText.syne11Reqular.copyWith(
                  color: AppColors.iconColor,
                ),
              ),
            ),
            onGenerateRoute: AppRouter().onGenerateRoute,
            initialRoute: Routes.home,
          ),
    );
  }
}
