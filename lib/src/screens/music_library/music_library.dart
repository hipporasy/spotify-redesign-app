import 'package:flutter/material.dart';
import 'package:spotify/src/theme/colors.dart';
import 'package:spotify/src/theme/dimens.dart';
import 'package:spotify/src/theme/images.dart';
import 'package:spotify/src/theme/textStyle.dart';

class MusicLibraryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MusicLibraryScreenState();
}

class _MusicLibraryScreenState extends State<MusicLibraryScreen> {
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
          )
        ],
      ),
    );
  }
}
