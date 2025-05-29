import 'package:flutter/material.dart';

class LabeledTextWidget extends StatelessWidget {
  const LabeledTextWidget({
    super.key,
    required this.label,
    required this.content,
  });
  final String label, content;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 30),
        Text(content, style: TextStyle(fontSize: 22)),
      ],
    );
  }
}
