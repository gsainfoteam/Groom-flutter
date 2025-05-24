import 'package:flutter/material.dart';
import 'package:groom_flutter/widgets/labeled_text_widget.dart';
import 'package:groom_flutter/widgets/profile_tag_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                  LabeledTextWidget(label: "닉네임", content: "TKJF"),
                  LabeledTextWidget(label: "학번", content: "20255092"),
                  LabeledTextWidget(label: "MBTI", content: "ISTP"),
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
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    ProfileTagWidget(
                      tagName: "냉장고",
                      tagType: TagType.boolean,
                      tagValue: true,
                    ),
                    ProfileTagWidget(
                      tagName: "청소주기",
                      tagType: TagType.text,
                      tagValue: "5회 / 일주일",
                    ),
                    ProfileTagWidget(
                      tagName: "MBTI",
                      tagType: TagType.text,
                      tagValue: "ISTP",
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
