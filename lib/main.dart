import 'package:flutter/material.dart';

import './screens/rating.dart';
import './screens/rideHistory.dart';
import './screens/signin.dart';
import './screens/Signup.dart';
import './screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BebaMzigo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black87,
              size: 12.0
            ),
            textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
          ),
      ),
      initialRoute: '/signin',
      routes: {
        '/rating': (_) => RatingScreen(),
        '/history': (_) => RideHistory(),
        '/signin': (_) => SignIn(),
        '/signup': (_) => SignUp(),
        '/': (_) => Home(),
      },
    );
  }
}
// primarySwatch: Color(0x3277D8),

