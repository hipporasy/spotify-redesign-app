import 'package:flutter/material.dart';
import 'package:spotify/src/theme/colors.dart';
import 'package:spotify/src/theme/dimens.dart';
import 'package:spotify/src/theme/images.dart';
import 'package:spotify/src/theme/textStyle.dart';

class TrackListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TrackListScreenState();
}

class _TrackListScreenState extends State<TrackListScreen> {
  bool _isActive = true;
  bool _isShuffle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackground,
      appBar: AppBar(
        title: Text("At Last"),
        flexibleSpace: Image(
          image: AssetImage(Images.album),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        actions: [Icon(Icons.more_vert)],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(Dimens.normalMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isShuffle = !_isShuffle;
                      });
                    },
                    child: Icon(
                      Icons.shuffle,
                      color: _isShuffle ? AppColor.primary : AppColor.lightText,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Offline",
                        style: AppTextStyle.largeTextStyle,
                      ),
                      Switch(
                        activeColor: AppColor.primary,
                        value: _isActive,
                        onChanged: (bool value) {
                          setState(() {
                            _isActive = !_isActive;
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: Dimens.normalMargin),
                    child: _buildSideText(),
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: _buildTrackCell(),
                            margin: const EdgeInsets.only(
                                left: Dimens.normalMargin,
                                right: Dimens.normalMargin),
                          );
                        }),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(Dimens.smallMargin),
              height: 78,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Get Away - ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Dimens.normalFont,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Good Girl",
                        style: TextStyle(
                            color: Colors.grey, fontSize: Dimens.normalFont),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                      ),
                      SizedBox(width: Dimens.normalMargin),
                      Icon(
                        Icons.skip_next,
                        color: Colors.white,
                      ),
                      SizedBox(width: Dimens.normalMargin),
                      Icon(
                        Icons.repeat_sharp,
                        color: Colors.white,
                      ),
                      SizedBox(width: Dimens.normalMargin)
                    ],
                  )
                ],
              ),
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
              // this._isTopTrackedSelected = true;
            });
          },
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Tracklist',
              style: TextStyle(
                  fontSize: Dimens.largeFont,
                  fontWeight: FontWeight.w600,
                  color: AppColor.primary),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTrackCell() {
    return Container(
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
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: Dimens.largeFont),
              ),
              Text(
                '2:56',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontSize: Dimens.normalFont),
              ),
            ],
          ),
          SizedBox(height: Dimens.bigMargin),
          Container(
            padding: const EdgeInsets.only(
                left: Dimens.smallMargin, right: Dimens.smallMargin),
            child: Divider(
              height: 1,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
