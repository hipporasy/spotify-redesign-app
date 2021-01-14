import 'package:flutter/material.dart';
import 'package:spotify/src/theme/colors.dart';
import 'package:spotify/src/theme/images.dart';
import 'package:spotify/src/theme/textStyle.dart';

class PlayerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackground,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("At Last"),
        backgroundColor: Colors.transparent,
        actions: [Icon(Icons.more_vert, color: Colors.white)],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(Images.album),
            ),
            Text(
              "Paris in Rain",
              style: AppTextStyle.primaryLargeTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
