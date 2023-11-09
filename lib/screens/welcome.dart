import 'package:flutter/material.dart';
import 'package:notes_flutter/widgets/roundeb_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                'Notas',
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
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}