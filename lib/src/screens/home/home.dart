import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify/src/theme/colors.dart';
import 'package:spotify/src/theme/dimens.dart';
import 'package:spotify/src/theme/images.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackground,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          padding: EdgeInsets.only(
              left: Dimens.largeMargin, right: Dimens.largeMargin),
          width: MediaQuery.of(context).size.width,
          height: 225,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Images.artistCover), fit: BoxFit.fitWidth),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                Images.artist,
                width: 100,
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('New Single'),
                  Text('New Single'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Images.album,
                    width: 100,
                    height: 100,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Listen'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
