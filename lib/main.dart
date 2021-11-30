import 'package:flutter/material.dart';
import 'package:uts/dashboard.dart';
import 'package:uts/ketitem.dart';
import 'package:uts/itemdetail.dart';
import 'package:uts/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/dashboard-page': (context) => DashboardPage(),
        '/item-detail': (context) => ItemDetail(),
        '/ket-item': (context) => KetItem(),
      },
    );
  }
}
