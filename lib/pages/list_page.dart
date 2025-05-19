import 'package:flutter/material.dart';
import 'package:groom_flutter/widgets/profile_card.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: const Text("Groom-App"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(35, 30, 35, 10),
        child: ListView(
          children: [ProfileCard(), ProfileCard(), ProfileCard()],
        ),
      ),
    );
  }
}
