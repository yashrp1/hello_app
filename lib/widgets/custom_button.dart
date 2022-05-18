import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // final VoidCallback onpress;
  final String label;
  final Function() onTap;
  const CustomButton({ Key? key, required this.label, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
      child: TextButton(
                    onPressed: onTap,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff465bd8))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        label,
                        style: const TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ),
                  ),
    );
  }
}