import 'package:flutter/material.dart';
import 'package:travely_app/shared/themes.dart';
import 'package:travely_app/views/detail_page.dart';

class DestinationAwardCard extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  const DestinationAwardCard({
    Key? key,
    required this.name,
    required this.city,
    required this.imageUrl,
    this.rating = 0.0,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(
          top: 30, 
          left: defaultMargin, 
          right: defaultMargin,
        ),
        width: 350,
        height: 211,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              imageUrl
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 6, top: 15),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_award.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(right: 6, top: 15),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/bookmark_active.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 97,
            ),
            Text(
              name,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.place,
                  color: secondaryGreyColor,
                  size: 16.0,
                ),
                  Text(
                  city,
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}