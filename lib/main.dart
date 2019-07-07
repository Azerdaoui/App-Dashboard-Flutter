import 'package:flutter/material.dart';
import 'package:app_dashboard/ui/dashboard.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App dashboard | Flutter',
      home: Dashboard(),
    );
  }
}



