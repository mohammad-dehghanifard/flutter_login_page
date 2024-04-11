import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
          minimumSize: const MaterialStatePropertyAll(Size(double.infinity,50)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
        ),
        child: Text(text,style: Theme.of(context).textTheme.bodyMedium)
    );
  }
}
