import 'package:flutter/material.dart';

import 'src/theme/colors.dart';
import 'src/theme/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Spotify',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: AppColor.primary),
        home: Container());
  }
}
