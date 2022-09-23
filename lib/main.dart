import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsa_polije/routes/router_generator.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TSA Polije',
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.blue,
              secondary: Colors.blue,
            ),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .copyWith(),
      ),
      onGenerateRoute: RouterGenerator.genarateRoute,
      // home: StylingScaffoldScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
