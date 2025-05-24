import 'package:flutter/material.dart';
import 'package:groom_flutter/widgets/card_tag_widget.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
    required this.nickname,
    required this.mbti,
    required this.studentNumber,
  });

  final String nickname, mbti;
  final int studentNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [Text(nickname, textAlign: TextAlign.left)]),
                Row(
                  children: [
                    Text(studentNumber.toString()),
                    SizedBox(width: 25),
                    Text(mbti),
                  ],
                ),
                Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.start,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    CardTagWidget(
                      tagName: "코골이",
                      tagValue: false,
                      tagType: TagType.boolean,
                    ),
                    CardTagWidget(
                      tagName: "흡연",
                      tagValue: true,
                      tagType: TagType.boolean,
                    ),
                    CardTagWidget(
                      tagName: "냉장고",
                      tagValue: false,
                      tagType: TagType.boolean,
                    ),
                    CardTagWidget(
                      tagName: "청소주기",
                      tagValue: "5회 / 일주일",
                      tagType: TagType.text,
                    ),
                    CardTagWidget(
                      tagName: "흡연",
                      tagValue: true,
                      tagType: TagType.boolean,
                    ),
                    CardTagWidget(
                      tagName: "냉장고",
                      tagValue: false,
                      tagType: TagType.boolean,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
