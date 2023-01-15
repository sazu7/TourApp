 import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/const/app_strings.dart';
import 'package:shelter/ui/route/route.dart';
import 'package:shelter/ui/theme/app_theme.dart';
import 'package:shelter/ui/views/splash_screen.dart';
import 'package:get/get.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    name: "Shelter",
    options: FirebaseOptions(
        apiKey: "AIzaSyCbTylxemVvQ3ClMGSRH7pk8jNJUW2Dogs",
        appId: "1:511343089229:android:fe06a37e6dce0a1d08ae04",
        messagingSenderId: "511343089229",
        projectId: "shelter-80d20"),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class MyApp extends StatelessWidget {
  
 RxBool darkMode = false.obs;
  // This widget is the root of your application. 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: AppTheme().lightTheme(context),
        darkTheme: AppTheme().darkTheme(context),
        themeMode: ThemeMode.system,
        initialRoute: splash,
        getPages: getPages,
        home:  splashScreen(),
      );
      },
      
    );
  }
}
