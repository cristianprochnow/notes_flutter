import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:notes_flutter/utils/constants.dart';
import 'package:notes_flutter/widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email;
  late String password;

  final auth = FirebaseAuth.instance;

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
                'Notas do Flutter - Nova Conta',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Entre com seu e-mail',
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Entre com sua senha',
              ),
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              obscureText: true,
            ),
            RoundedButton(
              title: 'Login',
              color: Colors.green,
              onPressed: () {
                auth
                  .signInWithEmailAndPassword(
                    email: email,
                    password: password,
                  )
                  .then((value) => Navigator.pushNamed(context, '/main'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
