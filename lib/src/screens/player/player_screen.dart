import 'package:flutter/material.dart';
import 'package:spotify/src/screens/song_detail/song_detail_screen.dart';
import 'package:spotify/src/theme/colors.dart';
import 'package:spotify/src/theme/dimens.dart';
import 'package:spotify/src/theme/images.dart';
import 'package:spotify/src/theme/textStyle.dart';

class PlayerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(Images.album),
              ),
              SizedBox(height: Dimens.normalMargin),
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
              SizedBox(height: Dimens.largeMargin),
              RaisedButton(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    style: BorderStyle.solid,
                    color: AppColor.primary,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                onPressed: () {},
                child: Text(
                  'Add to library',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimens.normalFont,
                  ),
                ),
              ),
              SizedBox(height: Dimens.largeMargin),
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
                        color:
                            _isShuffle ? AppColor.primary : AppColor.lightText,
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
              Stack(
                children: [
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
                                  color: Colors.grey,
                                  fontSize: Dimens.normalFont),
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
                  ),
                  Center(
                    child: Icon(
                      Icons.play_circle_fill,
                      color: AppColor.primary,
                      size: 56,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrackCell() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SongDetailScreen()));
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
              this._isTopTrackedSelected = !_isTopTrackedSelected;
            });
          },
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Tracklist',
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
