import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    Key? key,
    required this.image,
    required this.title,
    required this.percent,
    required this.textOfRecent,
  }) : super(key: key);

  final String image;
  final String title;
  final double percent;
  final String textOfRecent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: borderColorRecentBook),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 250,
          ),
          SizedBox(width: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: semiBoldText14.copyWith(color: blackColor2),
              ),
              CircularPercentIndicator(
                reverse: true,
                radius: 50,
                lineWidth: 7,
                animation: true,
                percent: percent,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: greenColor,
              ),
              Text(textOfRecent,
                style: mediumText12.copyWith(
                  color: greyColorRecentBook,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
