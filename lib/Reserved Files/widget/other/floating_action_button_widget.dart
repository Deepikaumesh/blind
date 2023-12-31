import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const FloatingActionButtonWidget({

    required this.onPressed,
  }) ;

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        child: Icon(Icons.add, size: 32),
        onPressed: onPressed,
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      );
}
