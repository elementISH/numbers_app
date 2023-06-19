import 'package:flutter/material.dart';
import 'package:numbers_app/home/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Numbers app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.indigo,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 24)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold))),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                    fontSize: 20, decoration: TextDecoration.underline))),
        textTheme: Theme.of(context).textTheme.apply(
              fontSizeFactor: 1.8,
            ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
