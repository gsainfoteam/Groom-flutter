import 'package:flutter/material.dart';
import 'package:groom_flutter/app/domain/entities/user_entity.dart';
import 'package:groom_flutter/app/presentation/widgets/labeled_text_widget.dart';
import 'package:groom_flutter/app/presentation/widgets/profile_tag_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.user});
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TKJF")),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(35, 30, 35, 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                "https://avatars.githubusercontent.com/u/72309529?v=4&size=130",
                width: 130,
                height: 130,
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabeledTextWidget(label: "닉네임", content: user.nickname),
                  LabeledTextWidget(
                    label: "학번",
                    content: "${user.studentNumber}학번",
                  ),
                  LabeledTextWidget(label: "MBTI", content: user.stringMbti()),
                ],
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: double.infinity,
                child: Wrap(
                  /* 현재 하드코딩 되어있음 수정필요 */
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    ProfileTagWidget(
                      tagName: "코곪",
                      tagValue: user.preferences.isSnoring,
                      tagType: TagType.boolean,
                    ),
                    ProfileTagWidget(
                      tagName: "흡연",
                      tagValue: user.preferences.isSmoking,
                      tagType: TagType.boolean,
                    ),
                    ProfileTagWidget(
                      tagName: "평균 기상시간",
                      tagValue: user.preferences.wakeUpTime,
                      tagType: TagType.time,
                    ),
                    ProfileTagWidget(
                      tagName: "평균 수면시간",
                      tagValue: user.preferences.sleepTime,
                      tagType: TagType.time,
                    ),
                    ProfileTagWidget(
                      tagName: "냉장고",
                      tagValue: user.preferences.hasRefrigerator,
                      tagType: TagType.boolean,
                    ),
                    ProfileTagWidget(
                      tagName: "추위잘탐",
                      tagValue: user.preferences.isColdSensitive,
                      tagType: TagType.boolean,
                    ),
                    ProfileTagWidget(
                      tagName: "더위잘탐",
                      tagValue: user.preferences.isHotSensitive,
                      tagType: TagType.boolean,
                    ),
                    ProfileTagWidget(
                      tagName: "청소횟수(1주)",
                      tagValue: user.preferences.cleanupFrequency,
                      tagType: TagType.boolean,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
