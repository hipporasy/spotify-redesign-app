import 'package:flutter/material.dart';
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
              Row(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
