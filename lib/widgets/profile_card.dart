import 'package:flutter/material.dart';
import 'package:groom_flutter/widgets/tag_widget.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade200,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [Text("TKJFTKJF", textAlign: TextAlign.left)]),
              Row(
                children: [Text("20255092"), SizedBox(width: 25), Text("ISTP")],
              ),
              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 13,
                runSpacing: 13,
                children: [
                  TagWidget(
                    tagName: "코골이",
                    tagValue: false,
                    tagType: TagType.boolean,
                  ),
                  TagWidget(
                    tagName: "흡연",
                    tagValue: true,
                    tagType: TagType.boolean,
                  ),
                  TagWidget(
                    tagName: "냉장고",
                    tagValue: false,
                    tagType: TagType.boolean,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
