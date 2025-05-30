import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groom_flutter/app/domain/entities/user_entity.dart';
import 'package:groom_flutter/app/presentation/bloc/user_bloc.dart';
import 'package:groom_flutter/app/presentation/widgets/labeled_text_widget.dart';
import 'package:groom_flutter/app/presentation/widgets/profile_tag_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.uuid});
  final int uuid;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc()..add(UserEvent.load(uuid)),
      child: Scaffold(
        appBar: AppBar(title: Text("프로필")),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.when(
              init: () {
                return const Center(child: Text('프로필 정보를 준비 중입니다...'));
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              done: (UserEntity user) {
                return SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
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
                              LabeledTextWidget(
                                label: "닉네임",
                                content: user.nickname,
                              ),
                              LabeledTextWidget(
                                label: "학번",
                                content: "${user.studentNumber}학번",
                              ),
                              LabeledTextWidget(
                                label: "MBTI",
                                content: user.stringMbti(),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(16),
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
                                  tagName: "냉장고 유무",
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
                                  tagName: "청소주기",
                                  tagValue:
                                      "${user.preferences.cleanupFrequency}회/주",
                                  tagType: TagType.text,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.all(8),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            child: Text(user.introduction),
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                );
              },
              error: (String e) {
                return Center(child: Text("오류가 발생하였습니다\n$e"));
              },
            );
          },
        ),
      ),
    );
  }
}
