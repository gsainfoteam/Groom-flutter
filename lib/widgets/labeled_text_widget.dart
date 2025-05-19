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
    return Row(children: [Text(label), SizedBox(width: 30), Text(content)]);
  }
}
