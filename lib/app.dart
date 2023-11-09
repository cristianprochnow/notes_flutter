import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notes_flutter/screens/main_screen.dart';
import 'package:notes_flutter/screens/register_screen.dart';
import 'package:notes_flutter/screens/welcome_screen.dart';

class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: 'AIzaSyC7bho6yaIrHNkUHAFHHCNufKOnpGdjths', 
          appId: '1:336060817639:android:dfb31b96233e91f3d48242', 
          messagingSenderId: '1:336060817639:android:dfb31b96233e91f3d48242', 
          projectId: 'notas-com-flutter',
        ),
      ),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            initialRoute: '/',
            routes: {
              '/': (context) => const WelcomeScreen(),
              '/main': (context) => const MainScreen(),
              '/register': (context) => const RegisterScreen(),
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
