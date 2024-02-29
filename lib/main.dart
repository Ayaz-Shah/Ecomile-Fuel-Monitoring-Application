import 'package:ecomile_monitor/Screen/PredictionScreen.dart';
import 'package:ecomile_monitor/Screen/homeScreen.dart';
import 'package:ecomile_monitor/Start%20Screens/splashScreen.dart';
import 'package:ecomile_monitor/Start%20Screens/consumptionScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screen/navigationScreen.dart';
import 'Start Screens/measurementScreen.dart';
import 'Start Screens/welcomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set Firebase options
  FirebaseOptions firebaseOptions = FirebaseOptions(
      apiKey: "AIzaSyBWvoSJtdtngJS3NeccN8nTz-AUxROWDCE",
      authDomain: "ecomile-monitor.firebaseapp.com",
      databaseURL: "https://ecomile-monitor-default-rtdb.firebaseio.com",
      projectId: "ecomile-monitor",
      storageBucket: "ecomile-monitor.appspot.com",
      messagingSenderId: "1036482615560",
      appId: "1:1036482615560:web:c12b5c221d9bdef826b4bd",
      measurementId: "G-HD759WE0LJ"

    // Add other options as needed
  );

  await Firebase.initializeApp(options: firebaseOptions);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecomile Monitoring',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
            titleSmall: GoogleFonts.metrophobic(
              fontSize: 14,
              color: const Color(0xffb80924),
              fontWeight: FontWeight.bold,
            ),
            titleMedium: GoogleFonts.metrophobic(
              fontSize: 18,
              color: const Color(0xffb80924),
              fontWeight: FontWeight.bold,
            ),
            titleLarge: GoogleFonts.metrophobic(
              fontSize: 24,
              color: const Color(0xffb80924),
              fontWeight: FontWeight.bold,
            ),
            labelSmall: GoogleFonts.metrophobic(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            labelMedium: GoogleFonts.metrophobic(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            headlineSmall: GoogleFonts.metrophobic(
              fontSize: 14,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
            displaySmall: GoogleFonts.metrophobic(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            displayMedium: GoogleFonts.metrophobic(
              fontSize: 10,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            displayLarge: GoogleFonts.metrophobic(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            bodySmall: GoogleFonts.metrophobic(
              fontSize: 8,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const navigationScreen(),

      // home: const PredictionScreen(),
      home: SplashScreen(),

    );
  }
}
