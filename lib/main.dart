import 'package:flutter/material.dart';
import 'package:group_task/screens/product_dashboard.dart';
import 'constant.dart';

void main() {
  Map<int, Color> colorMap = {
    50: primaryColor.withOpacity(0.1),
    100: primaryColor.withOpacity(0.2),
    200: primaryColor.withOpacity(0.3),
    300: primaryColor.withOpacity(0.4),
    400: primaryColor.withOpacity(0.5),
    500: primaryColor,
    600: primaryColor.withOpacity(0.6),
    700: primaryColor.withOpacity(0.7),
    800: primaryColor.withOpacity(0.8),
    900: primaryColor.withOpacity(0.9),
  };
  MaterialColor customColor = MaterialColor(primaryColor.value, colorMap);
  runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: customColor,
      )
    ),
    debugShowCheckedModeBanner: false,
    home: const ProductDashboard(),
  ));
}