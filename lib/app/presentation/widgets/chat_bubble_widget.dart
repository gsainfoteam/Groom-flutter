import 'dart:convert';

import 'package:flutter/material.dart';

class ChatBubbleWidget extends StatelessWidget {
  const ChatBubbleWidget({
    super.key,
    required this.content,
    required this.sendedTime,
    required this.isMe,
  });

  final String content;
  final String sendedTime;
  final bool isMe;
  final bool isNotImage = true;

  @override
  Widget build(BuildContext context) {
    final messageContainer = ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: (MediaQuery.of(context).size.width + 100) / 2,
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color:
              isMe
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondary,
          borderRadius:
              isMe
                  ? BorderRadius.circular(8) -
                      BorderRadius.only(bottomRight: Radius.circular(8))
                  : BorderRadius.circular(8) -
                      BorderRadius.only(bottomLeft: Radius.circular(8)),
        ),
        child:
            isNotImage
                ? Text(content, style: Theme.of(context).textTheme.bodyMedium)
                : Image.memory(base64Decode(content)),
      ),
    );

    final timeText = Text(
      sendedTime,
      style: Theme.of(context).textTheme.bodySmall,
    );

    final children =
        isMe
            ? [timeText, SizedBox(width: 4), messageContainer]
            : [messageContainer, SizedBox(width: 4), timeText];

    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: children,
      ),
    );
  }
}
