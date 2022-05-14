import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // final VoidCallback onpress;
  final String label;
  final Function() onTap;
  const CustomButton({ Key? key, required this.label, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 200,
        padding: const EdgeInsets.fromLTRB(45, 15, 45, 5),
        child: Text(label),
      ),
    );
  }
}