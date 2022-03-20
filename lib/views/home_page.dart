import 'package:flutter/material.dart';
import 'package:travely_app/model/travel_package.dart';
import 'package:travely_app/shared/themes.dart';
import 'package:travely_app/utils/destination_award_card.dart';
import 'package:travely_app/views/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/user_icon.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget bonusCard() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationAwardCard(
                name: 'Kelingking beach',
                city: 'Bali, Indonesia',
                imageUrl: 'assets/image1.png',
                rating: 4.8,
              ),
              DestinationAwardCard(
                name: 'Alimatha island',
                city: 'Maldives',
                imageUrl: 'assets/image2.png',
                rating: 4.7,
              ),
              DestinationAwardCard(
                name: 'Peyto lake',
                city: 'Alberta, Canada',
                imageUrl: 'assets/image3.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    // Widget listPopulation() {
    //   return ListView.builder(
    //     itemBuilder: (context, index) {
    //       final TravelPackage place = travelPackageList[index];

    //       return InkWell(
    //         onTap: () {
    //           Navigator.push(context, MaterialPageRoute(builder: (context) {
    //             return DetailPage();
    //           }));
    //         },
    //         child: Card(
    //           child: Row(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: <Widget>[
    //               Expanded(
    //                 flex: 1,
    //                 child: Image.asset(place.imageUrl),
    //               ),
    //               Expanded(
    //                 flex: 2,
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: <Widget>[
    //                       Text(
    //                         place.name,
    //                         style: TextStyle(fontSize: 16.0),
    //                       ),
    //                       SizedBox(
    //                         height: 10,
    //                       ),
    //                       Text(place.location),
    //                     ],
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       );
    //     },
    //     itemCount: travelPackageList.length,
    //   );
    // }

    return ListView(
      children: [
        header(),
        bonusCard(),
      ],
    );
  }
}
