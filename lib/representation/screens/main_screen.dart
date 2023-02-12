import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lookup_app/core/constants/color_constants.dart';
import 'package:lookup_app/core/constants/dimension_contants.dart';
import 'package:lookup_app/representation/screens/home_screen.dart';
import 'package:lookup_app/representation/screens/love_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const String routeName = '/main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currenIndex,
        children: [
          HomeScreen(),
          LoveScreen(),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.blue,
          ),
          // Container(
          //   color: Colors.amber,
          // ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currenIndex,
        onTap: (index) {
          setState(() {
            _currenIndex = index;
          });
        },
        selectedItemColor: ColorPalette.primaryColor,
        unselectedItemColor: Colors.black.withOpacity(0.5),
        margin: EdgeInsets.symmetric(
          horizontal: kMediumPadding,
          vertical: kDefaultPadding,
        ),
        items: [
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              size: kDefaultIconSize,
            ),
            title: Text('Trang chủ'),
            selectedColor: ColorPalette.primaryColor,
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.solidHeart,
              size: kDefaultIconSize,
            ),
            title: Text('Yêu thích'),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.camera,
              size: kDefaultIconSize,
            ),
            title: Text('Máy ảnh'),
          ),
          SalomonBottomBarItem(
            icon: Icon(
              FontAwesomeIcons.image,
              size: kDefaultIconSize,
            ),
            title: Text('Hình ảnh'),
          ),
        ],
      ),
    );
  }
}
