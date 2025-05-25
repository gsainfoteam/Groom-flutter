import 'package:flutter/material.dart';
import 'package:groom_flutter/widgets/chat_tile_widget.dart';

class ChattingListPage extends StatefulWidget {
  const ChattingListPage({super.key});

  @override
  State<ChattingListPage> createState() => _ChattingListPageState();
}

class _ChattingListPageState extends State<ChattingListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(35, 30, 35, 10),
        width: double.infinity,
        child: ListView(
          children: [ChatTileWidget(), ChatTileWidget(), ChatTileWidget()],
        ),
      ),
    );
  }
}
