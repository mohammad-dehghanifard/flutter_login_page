import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.title, required this.onTap, required this.isActive});
  final VoidCallback onTap;
  final String title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: 120,
        height: 60,
        decoration: BoxDecoration(
            color: colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(12),
            boxShadow: isActive? [
              BoxShadow(color: colorScheme.primary,offset: const Offset(0,5))
            ] : null
        ),
        child:  Center(child: Text(title)),
      ),
    );
  }
}