import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;

  const StyledButton({super.key,
    required this.onPressed,
    required this.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, 
      style: TextButton.styleFrom(
        backgroundColor: Colors.brown, 
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        minimumSize: const Size(40, 36),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
      child: child,
      );
  }
}