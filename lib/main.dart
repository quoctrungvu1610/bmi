import 'package:flutter/material.dart';
import 'input_page.dart';


void main() {
  runApp(BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF090C20),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: Colors.teal.shade50,
        ),
        scaffoldBackgroundColor: Color(0xFF05060C),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          )
        )
      ),
    );
  }
}

