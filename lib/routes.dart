import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lookup_app/data/models/medicine_model.dart';
import 'package:lookup_app/representation/screens/detail_screen.dart';
import 'package:lookup_app/representation/screens/home_screen.dart';
import 'package:lookup_app/representation/screens/love_screen.dart';
import 'package:lookup_app/representation/screens/main_screen.dart';
import 'package:lookup_app/representation/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  MainScreen.routeName: (context) => const MainScreen(),
  //DetailScreen.routeName: (context) => const DetailScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  LoveScreen.routeName: (context) => const LoveScreen(),
};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DetailScreen.routeName:
      return MaterialPageRoute(
          //settings: settings,
          builder: (context) {
        final MedicineModel medicineModel =
            (settings.arguments as MedicineModel);
        return DetailScreen(
          medicineModel: medicineModel,
        );
      });
  }
}
