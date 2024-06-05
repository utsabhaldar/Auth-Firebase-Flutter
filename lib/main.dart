import 'package:firebase_auth_project/firebase_options.dart';
import 'package:firebase_auth_project/screens/Auth/sign_in_screen.dart';
import 'package:firebase_auth_project/screens/Auth/sign_up_screen.dart';
import 'package:firebase_auth_project/screens/Home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Auth',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/sign-in': (context) => SignInScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
