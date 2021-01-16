import 'package:flutter/material.dart';
import 'package:spotify/src/theme/colors.dart';
import 'package:spotify/src/theme/dimens.dart';
import 'package:spotify/src/theme/images.dart';
import 'package:spotify/src/theme/textStyle.dart';

class SongDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SongDetailScreenState();
}

class _SongDetailScreenState extends State<SongDetailScreen> {
  bool _isShuffle = false;
  bool _isActive = false;
  bool _isTopTrackedSelected = false;
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
        child: Container(
          padding: const EdgeInsets.all(Dimens.largeMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(Images.album),
              ),
              SizedBox(height: Dimens.largeMargin),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.library_add, color: Colors.white),
                  Column(
                    children: [
                      Text(
                        "Paris in Rain",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Dimens.largeFont,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: Dimens.smallMargin),
                      Text(
                        "Great Good Fine Ok",
                        style: AppTextStyle.largeLightTextStyle,
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
              SizedBox(height: Dimens.largeMargin),
              SizedBox(height: Dimens.largeMargin),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrackCell() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
            left: Dimens.normalMargin, right: Dimens.normalMargin),
        padding: const EdgeInsets.all(Dimens.normalMargin),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1 First Yourself',
                  style: AppTextStyle.largeTextStyle,
                ),
                Text(
                  '2:56',
                  style: AppTextStyle.lightTextStyle,
                ),
              ],
            ),
            SizedBox(height: Dimens.normalMargin),
            Divider(
              height: 1,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSideText() {
    return Column(
      children: [
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              this._isTopTrackedSelected = !_isTopTrackedSelected;
            });
          },
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Top Tracks',
              style: _isTopTrackedSelected
                  ? AppTextStyle.primaryLargeTextStyle
                  : AppTextStyle.largeTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
