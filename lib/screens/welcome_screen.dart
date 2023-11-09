import 'package:flutter/material.dart';
import 'package:notes_flutter/widgets/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'Notas do Flutter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            RoundedButton(
              title: 'Login', 
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              color: Colors.blue,
            ),
            RoundedButton(
              title: 'Registre-se', 
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}