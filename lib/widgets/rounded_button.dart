import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color? color;
  final String title;
  final VoidCallback onPressed;

  const RoundedButton({
    Key? key,
    this.color,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(32),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 160.0,
          height: 40,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}