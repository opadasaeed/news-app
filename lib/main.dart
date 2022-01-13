import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/view/screen/news.dart';
import 'package:page_transition/page_transition.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),

        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splashIconSize: double.infinity,
        splash: Image.asset('assets/images/news splash.jpg',
          width: double.infinity,

          fit: BoxFit.cover,),

        nextScreen: NewsPage(),
        duration: 4,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
      ),
    );
  }
}

