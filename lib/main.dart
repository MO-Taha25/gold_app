import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'bottomNva.dart';
import 'login_screen.dart';
import 'settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // constructor
  // build

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Ticker Demo',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        LoginScreen.homeRout: (context) => LoginScreen(),
        BottomNav.home2Rout: (context) => BottomNav(),
        'PriceTrackingPage': (context) => PriceTrackingPage(),
      },
    );
  }
}
