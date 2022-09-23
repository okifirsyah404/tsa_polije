import 'package:flutter/material.dart';
import 'package:tsa_polije/screens/about_screen.dart';
import 'package:tsa_polije/screens/column_row_screen.dart';
import 'package:tsa_polije/screens/column_screen.dart';
import 'package:tsa_polije/screens/home_screen.dart';
import 'package:tsa_polije/screens/listview_screen.dart';
import 'package:tsa_polije/screens/main_menu.dart';
import 'package:tsa_polije/screens/row_screen.dart';
import 'package:tsa_polije/screens/stateful_screen.dart';
import 'package:tsa_polije/screens/styling_scaffold_screen.dart';

class RouterGenerator {
  static Route<dynamic> genarateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/menu':
        return MaterialPageRoute(builder: (_) => const MainMenuScreen());
      case '/styling-scaffold':
        return MaterialPageRoute(builder: (_) => const StylingScaffoldScreen());
      case '/about':
        return MaterialPageRoute(builder: (_) => const AboutScreen());
      case '/row':
        return MaterialPageRoute(builder: (_) => const RowScreen());
      case '/column':
        return MaterialPageRoute(builder: (_) => const ColumnScreen());
      case '/column-row':
        return MaterialPageRoute(builder: (_) => const ColumnRowScreen());
      case '/stateful':
        return MaterialPageRoute(builder: (_) => const StatefulScreen());
      case '/listview':
        return MaterialPageRoute(builder: (_) => const ListViewScreen());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
