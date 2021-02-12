import 'package:flutter/material.dart';
import 'package:spacex/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SpaceXHome());
}

class SpaceXHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UIs',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        primarySwatch: Colors.red,
        accentColor: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}
