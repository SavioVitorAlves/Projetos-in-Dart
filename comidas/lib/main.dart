import 'package:flutter/material.dart';
import 'screens/category_screens.dart';
import './screens/category_meals_screens.dart';
import 'screens/meal_detail_screem.dart';
import './utils/app_routes.dart';
import 'screens/tabs_screens.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(
          secondary: Colors.amber,
        ),
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreens(),
        AppRoutes.CATEGORY_MEALS:(ctx) => CategoryMealsScreens(),
        AppRoutes.MEALS_DETAIL:(ctx) => MealDetailScreem(),
      },
    );
  }
}
