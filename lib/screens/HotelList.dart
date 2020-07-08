import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:offerapp/utilities/styles.dart';

class HotelList extends StatefulWidget {
  @override
  _HotelListState createState() => _HotelListState();
}

class _HotelListState extends State<HotelList> {
  final List<int> numbers = [1, 2, 3];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 10.0),
                width: 134.0,
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white70,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  child: Container(
                    child: ListView(
                      children: [
                        Stack(
                          fit: StackFit.loose,
                          children: [
                            Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'assets/images/hotel1.png',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sulthan Palace",
                                style: kHotelNameStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
