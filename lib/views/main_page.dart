import 'package:flutter/material.dart';
import 'package:travely_app/shared/themes.dart';
import 'package:travely_app/utils/bottom_navigation.dart';
import 'package:travely_app/views/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildContent() {
      return HomePage();
      // case 1:
      //   return TransactionPage();
      // case 2:
      //   return WalletPage();
      // case 3:
      //   return SettingPage();
      // default:
      //   return HomePage();
    }

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const BottomNavigation(
                imageUrl: 'assets/icon_home_active.png',
                isSelected: true,
              ),
              const BottomNavigation(
                imageUrl: 'assets/icon_discovery.png',
              ),
              const BottomNavigation(
                imageUrl: 'assets/icon_bookmark.png',
              ),
              const BottomNavigation(
                imageUrl: 'assets/icon_user.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          buildContent(),
          bottomNavigation(),
        ],
      ),
    );
  }
}
