import 'package:flutter/material.dart';
import 'package:spotify/src/theme/images.dart';

class TrackListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TrackListScreenState();
}

class _TrackListScreenState extends State<TrackListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("At Last"),
        flexibleSpace: Image(
          image: AssetImage(Images.album),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(Icons.shuffle), Switch(value: true)],
          )
        ],
      ),
    );
  }
}
