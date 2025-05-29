import 'package:flutter/material.dart';
import 'package:groom_flutter/app/domain/entities/user_entity.dart';
import 'package:groom_flutter/app/presentation/widgets/card_tag_widget.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key, required this.user});

  final UserEntity user;

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
                Row(children: [Text(user.nickname, textAlign: TextAlign.left)]),
                Row(
                  children: [
                    Text(user.studentNumber.toString()),
                    SizedBox(width: 25),
                    Text(user.mbtiString()),
                  ],
                ),
                Wrap(
                  /* 현재 하드코딩 되어있음 해결책 필요. */
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.start,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    CardTagWidget(
                      tagName: "코곪",
                      tagValue: user.preferences.isSnoring,
                      tagType: TagType.boolean,
                    ),
                    CardTagWidget(
                      tagName: "흡연",
                      tagValue: user.preferences.isSmoking,
                      tagType: TagType.boolean,
                    ),
                    CardTagWidget(
                      tagName: "평균 기상시간",
                      tagValue: user.preferences.wakeUpTime,
                      tagType: TagType.time,
                    ),
                    CardTagWidget(
                      tagName: "평균 수면시간",
                      tagValue: user.preferences.sleepTime,
                      tagType: TagType.time,
                    ),
                    CardTagWidget(
                      tagName: "냉장고",
                      tagValue: user.preferences.hasRefrigerator,
                      tagType: TagType.boolean,
                    ),
                    CardTagWidget(
                      tagName: "추위잘탐",
                      tagValue: user.preferences.isColdSensitive,
                      tagType: TagType.boolean,
                    ),
                    CardTagWidget(
                      tagName: "더위잘탐",
                      tagValue: user.preferences.isHotSensitive,
                      tagType: TagType.boolean,
                    ),
                    CardTagWidget(
                      tagName: "청소횟수(1주)",
                      tagValue: user.preferences.cleanupFrequency,
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
