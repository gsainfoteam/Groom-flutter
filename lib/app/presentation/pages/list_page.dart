import 'package:flutter/material.dart';
import 'package:groom_flutter/app/presentation/widgets/profile_card_widget.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Groom-App")),
      body: Container(
        padding: EdgeInsets.fromLTRB(35, 30, 35, 10),
        child: ListView(
          children: [
            ProfileCardWidget(
              nickname: "TKJF",
              studentNumber: 20255092,
              mbti: "ISTP",
            ),
            ProfileCardWidget(
              nickname: "TKJF",
              studentNumber: 20255092,
              mbti: "ISTP",
            ),
            ProfileCardWidget(
              nickname: "TKJF",
              studentNumber: 20255092,
              mbti: "ISTP",
            ),
          ],
        ),
      ),
    );
  }
}
