import 'package:flutter/material.dart';
import 'package:travely_app/model/travel_package.dart';
import 'package:travely_app/shared/themes.dart';
import 'package:travely_app/utils/destination_award_card.dart';
import 'package:travely_app/views/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    PreferredSizeWidget appBar() {
      return AppBar(
        backgroundColor: whiteColor,
        centerTitle: false,
        title: Row(
          children: [
            Container(
              width: 103,
              height: 29,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget body(BuildContext context) {
      return ListView.builder(itemBuilder: (context, index) {
        final TravelPackage travelPackage = travelPackageList[index];
        return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(travelPackage: travelPackage);
              }));
            },
          child:  Container(
          // margin: EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget> [
                  DestinationAwardCard(
                    name: travelPackage.name,
                    city: travelPackage.location,
                    imageUrl: travelPackage.imageUrl,
                    rating: travelPackage.rating,
                  ),
                  
                ],
              ),
            ),
          ),
        );
      }, itemCount: travelPackageList.length,);
    }

    Widget bottomNavBar() {
      return Container(
        color: whiteColor,
        padding: EdgeInsets.only(
          top: 1,
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
          ),
          color: whiteColor,
          child: BottomNavigationBar(
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            selectedItemColor: blackColor,
            elevation: 1,
            items: [
              BottomNavigationBarItem(
                label: 'home',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_home_active.png',
                      ),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'discovery',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_discovery.png',
                      ),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'bookmark',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_bookmark.png',
                      ),
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'profile',
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_user.png',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: appBar(),
      body: body(context),
      bottomNavigationBar: bottomNavBar(),
    );
    
  }
}
