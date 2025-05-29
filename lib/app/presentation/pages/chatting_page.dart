import 'package:flutter/material.dart';
import 'package:groom_flutter/app/presentation/widgets/chat_bubble_widget.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back), title: Text("TKJFTKJF")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: ListView(
                /* ListView.builder로 변경 */
                children: [
                  ChatBubbleWidget(
                    isMe: false,
                    sendedTime: "24:00",
                    content:
                        "햄부기햄북 햄북어 햄북스딱스 함부르크햄부가우가 햄비기햄부거 햄부가티햄부기온앤 온을 차려오거라",
                  ),
                  ChatBubbleWidget(
                    isMe: true,
                    sendedTime: "24:00",
                    content: "이게 뭔데 이 승민이 같은 새끼야 제발 현실을 살아...",
                  ),
                  ChatBubbleWidget(
                    isMe: false,
                    sendedTime: "1:00",
                    content:
                        "햄부기햄북 햄북어 햄북스딱스 함부르크햄부가우가 햄비기햄부거 햄부가티햄부기온앤 온을 차려오라고 하지 않았느냐",
                  ),
                  ChatBubbleWidget(
                    isMe: true,
                    sendedTime: "2:00",
                    content: "쉽지 않네...",
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Icon(Icons.add_circle_outline),
                SizedBox(width: 8),
                Expanded(child: TextField()),
                SizedBox(width: 8),
                Icon(Icons.send),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
