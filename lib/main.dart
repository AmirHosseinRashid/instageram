import 'package:flutter/material.dart';
import 'package:flutter_application_instageram/contexts/context.dart';
import 'package:flutter_application_instageram/screens/activity_screen.dart';
import 'package:flutter_application_instageram/screens/login_screen.dart';
import 'package:flutter_application_instageram/screens/main_screen.dart';
import 'package:flutter_application_instageram/screens/profile_screen.dart';
import 'package:flutter_application_instageram/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          elevatedButtonTheme:
              elevatedButtonTheme() //style ElevatedButtonThemeData,
          ),
      debugShowCheckedModeBanner: false,
      home: loginpage(),
      // homepage(),
      //   search_screen(),
      //   postpage(),
      //   activitypage(),
      //   profilepage(),
    );
  }

// _______________________________________________\\
// --------------------Start style ElevatedButtonThemeData
  elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: pinkColor,
        fixedSize: Size(129, 46),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyle(
          color: whiteColor,
          fontSize: 17,
          fontFamily: 'SM',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage('images/pattern1.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Center(
              child: Image(
                image: AssetImage('images/logo_splash.png'),
                width: 155,
                height: 77,
              ),
            ),
            Positioned(
              bottom: 32,
              child: Column(
                children: [
                  Text(
                    'Form',
                    style: TextStyle(color: greyColor),
                  ),
                  Text(
                    'FromExpertflutter',
                    style: TextStyle(color: blueColor),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
