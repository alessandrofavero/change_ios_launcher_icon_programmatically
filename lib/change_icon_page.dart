import 'package:change_ios_launcher_icon_programmatically/app_icon.dart';
import 'package:flutter/material.dart';

class ChangeIconPage extends StatelessWidget {
  const ChangeIconPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Launcher Icon'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            IconSelector(
              appIcon: IconType.Normal,
              imageAsset: 'assets/icon-normal.png',
              name: 'Normal',
            ),
            IconSelector(
              appIcon: IconType.Blue,
              imageAsset: 'assets/icon-blue.png',
              name: 'Blue',
            ),
            IconSelector(
              appIcon: IconType.Red,
              imageAsset: 'assets/icon-red.png',
              name: 'Red',
            ),
          ],
        ),
      ),
    );
  }
}

class IconSelector extends StatelessWidget {
  final IconType appIcon;
  final String imageAsset;
  final String name;

  IconSelector(
      {@required this.appIcon, @required this.imageAsset, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageAsset),
              Text(name),
            ],
          ),
        ),
        onTap: () {
          AppIcon.setLauncherIcon(appIcon);
        },
      ),
    );
  }
}
