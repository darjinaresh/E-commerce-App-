import 'package:flutter/material.dart';
import 'package:naveli/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_screen.dart';
import 'categories.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyDdiReBgvP4FQJJptCOg8wZ0iN6M0795jI',
      appId: '1:789093554975:android:58416876d52808ca476e2a', // Your App ID
      messagingSenderId: '789093554975', // Your Sender ID
      projectId: 'navelitailor-firebase', // Your Project ID
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, // Set your desired AppBar color here
          foregroundColor: Colors.grey[900], // Set the AppBar text and icon color
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(fontWeight: FontWeight.w600),
          // bodyText2: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      home: HomeScreen(),
    );
  }
}