import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jaiboon_donaitonapp/src/screen/login.dart';
import 'package:jaiboon_donaitonapp/src/screen/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.notoSansThai().fontFamily,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
          bodySmall: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xff1BC28E),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            minimumSize: const Size(140, 34),
            textStyle: TextStyle(
              fontFamily: GoogleFonts.notoSansThai().fontFamily,
              fontSize: 18.0,
            ),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const LogInPage(),
      routes: {
        '/': (context) => const LogInPage(),
        '/signin': (context) => const SignInPage()
      },
    );
  }
}
