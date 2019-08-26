import 'package:flutter/material.dart';

import 'package:change_ios_launcher_icon_programmatically/change_icon_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: ChangeIconPage(),
    );
  }
}
