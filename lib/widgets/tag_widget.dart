import 'package:flutter/material.dart';

enum TagType { boolean, text, time }

class TagWidget extends StatelessWidget {
  const TagWidget({
    super.key,
    required this.tagName,
    required this.tagValue,
    required this.tagType,
  });
  final String tagName;
  final dynamic tagValue;
  final TagType tagType;

  @override
  Widget build(BuildContext context) {
    String tagValueOutput;
    List<String> timeValueOutput = [
      "0시~2시",
      "2시~4시",
      "4시~6시",
      "6시~8시",
      "8시~10시",
      "10시~12시",
      "12시~14시",
      "14시~16시",
      "16시~18시",
      "18시~20시",
      "20시~22시",
      "22시~24시",
    ];
    switch (tagType) {
      case TagType.boolean:
        tagValueOutput = tagValue ? "O" : "X";
        break;
      case TagType.text:
        tagValueOutput = tagValue;
        break;
      case TagType.time:
        tagValueOutput = timeValueOutput[tagValue];
        break;
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.all(Radius.circular(19)),
      ),
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
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
            tagValueOutput,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
