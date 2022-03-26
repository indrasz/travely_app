import 'package:flutter/material.dart';
import 'package:travely_app/model/travel_package.dart';
import 'package:travely_app/shared/themes.dart';

class DetailPage extends StatelessWidget {
  final TravelPackage travelPackage;

  const DetailPage({
    required this.travelPackage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      margin: const EdgeInsets.only(right: 6, top: 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/back_button.png'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(right: 6, top: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/share_button.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              travelPackage.imageUrl,
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 330),
        child: Column(
          children: [
            // NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travelPackage.name,
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.place,
                        color: secondaryGreyColor,
                        size: 16.0,
                      ),
                      Text(
                        travelPackage.location,
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  // NOTE: ABOUT
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    travelPackage.description,
                    style: blackTextStyle.copyWith(
                      height: 2,
                    ),
                  ),

                  // NOTE: PHOTOS
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      // PhotoItem(
                      //   imageUrl: 'assets/image_photo1.png',
                      // ),
                      // PhotoItem(
                      //   imageUrl: 'assets/image_photo2.png',
                      // ),
                      // PhotoItem(
                      //   imageUrl: 'assets/image_photo3.png',
                      // ),
                    ],
                  ),

                  // NOTE: INTERESTS
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      // InterestItem(
                      //   text: 'Kids Park',
                      // ),
                      // InterestItem(
                      //   text: 'Honor Bridge',
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      // InterestItem(
                      //   text: 'City Museum',
                      // ),
                      // InterestItem(
                      //   text: 'Central Mall',
                      // ),
                    ],
                  ),
                ],
              ),
            ),

            // NOTE: PRICE & BOOK BUTTON
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  // NOTE: PRICE
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per orang',
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // NOTE: BOOK BUTTON
                  // CustomButton(
                  //   title: 'Book Now',
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context)=> ChooseSeatPage(),
                  //       )
                  //     );
                  //   },
                  //   width: 170,
                  // ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            content(),
          ],
        ),
      ),
    );
  }
}
