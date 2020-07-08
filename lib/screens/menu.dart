import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offerapp/utilities/styles.dart';

import 'HotelList.dart';
import 'OfferList.dart';

class ScrollContainer extends StatefulWidget {
  @override
  _ScrollContainerState createState() => _ScrollContainerState();
}

class _ScrollContainerState extends State<ScrollContainer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SafeArea(
        ),
      ),
    );
  }
}
