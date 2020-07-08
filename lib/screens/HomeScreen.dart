import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offerapp/utilities/styles.dart';
import 'package:offerapp/screens/OfferList.dart';
import 'package:offerapp/screens/HotelList.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
              ],
            ),
          ),
          child: Column(
            children: [
              AppBar(),
              ScrollContent(),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "APP NAME",
                    style: kTitleStyle.apply(color: Colors.white),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.5),
                child: PopupMenuButton(
                  icon: Icon(Icons.more_vert, color: Colors.white),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("FeedBack"),
                    ),
                    PopupMenuItem(
                      child: Text("Join with US"),
                    ),
                    PopupMenuItem(
                      child: Text("about Us"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfff5f8fd).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                      style: (TextStyle(color: Colors.white)),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                        child: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ScrollContent extends StatelessWidget {
  const ScrollContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Popular Hotels",
                      style: kHotelTextStyle.apply(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),

//              hotel list
            Container(height: 170, child: HotelList()),

            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hot Deals",
                      style: kHotelTextStyle.apply(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

//              offerlist

            OfferList(),
          ],
        ),
      ),
    );
  }
}
