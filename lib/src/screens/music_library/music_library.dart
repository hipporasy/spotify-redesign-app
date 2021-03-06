import 'package:flutter/material.dart';
import 'package:spotify/src/screens/player/player_screen.dart';
import 'package:spotify/src/screens/track_list/track_list_screen.dart';
import 'package:spotify/src/theme/colors.dart';
import 'package:spotify/src/theme/dimens.dart';
import 'package:spotify/src/theme/images.dart';
import 'package:spotify/src/theme/textStyle.dart';

class MusicLibraryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MusicLibraryScreenState();
}

class _MusicLibraryScreenState extends State<MusicLibraryScreen> {
  bool _isTopTrackedSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(Images.topCover),
          Container(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Great Good Fine Ok',
                  style: AppTextStyle.extraLargeTextStyle,
                ),
                RaisedButton(
                  color: AppColor.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  onPressed: () {},
                  child: Text('Subscribe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.normalFont,
                      )),
                )
              ],
            ),
          ),
          _buildExplore(),
          Expanded(
              child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: Dimens.largeMargin),
                width: 50,
                child: _buildSideText(),
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
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
          ))
        ],
      ),
    );
  }

  Widget _buildExplore() {
    return Container(
      padding:
          EdgeInsets.only(left: Dimens.normalMargin, top: Dimens.largeMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: _buildExploreCell(),
                    margin: const EdgeInsets.only(
                        left: Dimens.normalMargin, right: Dimens.normalMargin),
                  );
                }),
          ),
          Container(
            padding: const EdgeInsets.all(Dimens.smallMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'View all albums ',
                  style: AppTextStyle.primaryTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildExploreCell() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => TrackListScreen()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Images.album,
            width: 150,
            height: 150,
          ),
          SizedBox(height: Dimens.smallMargin),
          Text('At last', style: AppTextStyle.largeTextStyle),
          SizedBox(height: Dimens.smallMargin),
          Container(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1 Song',
                  style: AppTextStyle.lightTextStyle,
                ),
                Text(
                  '2017',
                  style: AppTextStyle.lightTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTrackCell() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PlayerScreen()));
      },
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
              this._isTopTrackedSelected = true;
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
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              this._isTopTrackedSelected = false;
            });
          },
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Latest',
              style: _isTopTrackedSelected
                  ? AppTextStyle.largeTextStyle
                  : AppTextStyle.primaryLargeTextStyle,
            ),
          ),
        )
      ],
    );
  }
}
