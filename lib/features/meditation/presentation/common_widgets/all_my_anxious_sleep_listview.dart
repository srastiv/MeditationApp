import 'package:flutter/material.dart';

import '../screens/meditate/data/data.dart';

class AllMyAnxiousSleepListViewBuilderWidget extends StatelessWidget {
  const AllMyAnxiousSleepListViewBuilderWidget({
    Key? key,
    required this.color,
    required this.textyle,
  }) : super(key: key);
  final Color color;
  final TextStyle textyle;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: meditateHorizontalList.length,
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.only(
                  left: 20.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: color,
                ),
                child: meditateHorizontalList[index].icon,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Text(
                  meditateHorizontalList[index].text,
                  style: textyle,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
