import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key, required this.tagName, required this.tagValue});
  final String tagName;
  final bool tagValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.all(Radius.circular(19)),
      ),
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tagName,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          ),
          SizedBox(width: 5),
          Text(
            ":",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          ),
          SizedBox(width: 5),
          Text(
            (tagValue ? "O" : "X"),
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
