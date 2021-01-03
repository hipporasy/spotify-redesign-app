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
        value: SystemUiOverlayStyle.light,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_buildHeader(), _buildExplore()],
        ),
      ),
    );
  }

  Widget _buildExplore() {
    return Container(
      padding: EdgeInsets.only(left: Dimens.normalMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Explore',
            style:
                TextStyle(fontSize: Dimens.extraLargeFont, color: Colors.white),
          ),
          _buildExploreCell()
        ],
      ),
    );
  }

  Widget _buildExploreCell() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Images.album,
          width: 120,
          height: 120,
        ),
        Text(
          'At last',
          style: TextStyle(color: Colors.white, fontSize: Dimens.normalFont),
        ),
        Text('FM - 96')
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      padding:
          EdgeInsets.only(left: Dimens.largeMargin, right: Dimens.largeMargin),
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
              Text(
                'New Single',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: Dimens.normalFont, color: AppColor.primary),
              ),
              Text(
                'Paris In The Rain',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: Dimens.largeFont, color: Colors.white),
              ),
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
                color: AppColor.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                onPressed: () {},
                child: Text('Listen',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimens.normalFont,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
