import 'package:flutter/material.dart';

class style extends StatelessWidget {
  final Function()? onTap;

  const style({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 88, 56, 229),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'VERIFY',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
