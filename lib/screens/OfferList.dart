import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:offerapp/utilities/styles.dart';

class OfferList extends StatefulWidget {
  @override
  _OfferListState createState() => _OfferListState();
}

class _OfferListState extends State<OfferList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, i) {
          return Column(children: [
            Container(
              height: 145,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(.3), blurRadius: 3)
              ], color: Colors.white, borderRadius: BorderRadius.circular(9.0)),
              margin: const EdgeInsets.all(9.0),
              padding: const EdgeInsets.all(9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/offer.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Meet n Treat",
                                    style: kHotelNameStyle,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 15.0,
                                        ),
                                        Text(
                                          "Malappuram",
                                          style: kHotelLocationStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text("Arabian Meals @199 Only")
                                ],
                              ),
                            ],
                          ),
                        ),
//                        RotationTransition(
//                          turns: new AlwaysStoppedAnimation(270 / 360),
//                          child: GestureDetector(
//                            onTap: () {
//                              Navigator.of(context).pushNamed('/bottomNav');
//                            },
//                            child: Container(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Text(
//                                "View",
//                                style: Theme.of(context)
//                                    .textTheme
//                                    .button
//                                    .copyWith(color: Colors.white),
//                              ),
//                              decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(5.0),
//                                color: Colors.greenAccent,
//                              ),
//                            ),
//                          ),
//                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]);
        },
      ),
    );
  }
}
