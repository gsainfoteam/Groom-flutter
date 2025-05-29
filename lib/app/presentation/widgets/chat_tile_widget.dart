import 'package:flutter/material.dart';

class ChatTileWidget extends StatelessWidget {
  const ChatTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Row(
        children: [
          Container(width: 50, height: 50, color: Colors.black),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "TKJFTKJF",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "00 minute ago",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text(
                  "동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세. 무궁화 삼천리 화려강산. 대한사람 대한으로 길이 보전하세.",
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
