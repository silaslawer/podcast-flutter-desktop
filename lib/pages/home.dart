import 'package:desktop/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_body.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  List<String> menuTitles = [
    "Verify your Identify",
    "Personal Information",
    "Contact Details",
    "Investment Profile",
    "Employment Status",
    "Funds Details"
  ];

  final activeColor = UIColors.grey;
  final inActiveColor = UIColors.grey;
  final textColor = UIColors.green.withOpacity(0.5);
  final borderColor = UIColors.orange.withOpacity(0.7);

  int currentIndex = 0;

  final bottomItems = [
    {"icon": "images/icons/music.png", "text": "Songs"},
    {"icon": "images/icons/album.png", "text": "Albums"},
    {"icon": "images/icons/mic.png", "text": "Artists"},
    {"icon": "images/icons/sound-waves.png", "text": "Podcasts"},
    {"icon": "images/icons/radio.png", "text": "Radio"},
    {"icon": "images/icons/heart.png", "text": "Favourite"},
  ];

  final playItems = [
    "Unplugged",
    "Arijit Sing",
    "Best of Kisor Kumar",
    "Bollywood Mashups",
  ];

  menuItems() {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Music",
              style: TextStyle(color: UIColors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            ...bottomItems
                .asMap()
                .map((i, icon) {
                  bool active = i == currentIndex;
                  final color = active ? UIColors.violet : null;
                  final bgColor =
                      active ? UIColors.violet.withOpacity(0.2) : null;
                  Widget button;

                  button = GestureDetector(
                    onTap: () {
                      setState(() => currentIndex = i);
                    },
                    child: Container(
                      decoration: BoxDecoration(color: bgColor),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              icon["icon"].toString(),
                              fit: BoxFit.fill,
                              width: 20,
                              height: 20,
                              color: color,
                            ),
                            onPressed: null,
                          ),
                          Text(
                            icon["text"].toString(),
                            style: TextStyle(
                                color: color,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  );
                  return MapEntry(i, button);
                })
                .values
                .toList(),
          ]),
    );
  }

  playListItems() {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Your Playlists",
              style: TextStyle(color: UIColors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            testplayListItems()
          ]),
    );
  }

  testplayListItems() {
    return ListView.builder(
        itemCount: playItems.length + 1,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(

            padding: EdgeInsets.all(8),
            child: playItems.length == index
                ?  Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical:5,horizontal: 5),
                margin: EdgeInsets.only(right:100,top: 20),

                decoration: BoxDecoration(
                    border: Border.all(color: UIColors.grey),
                    borderRadius:
                    BorderRadius.all(Radius.circular(15))),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Icon(Icons.add,color: UIColors.blue,),
                  SizedBox(width: 10,),
                  Text("Create New",style: TextStyle(color: UIColors.blue),),

                ],))
                :Text(
              playItems[index].toString(),
              style: TextStyle(
                  //  color: color,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          );
        });
  }

  Widget get searchButton {
    final color = UIColors.lightBlack;
    return Container(
      width: 15,
      height: 15,
      child: Stack(
        children: <Widget>[
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: color, width: 2),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()..rotateZ(-40),
              child: Container(height: 2, width: 5, color: color),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldkey,
      body: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: UIColors.lightGrey1.withOpacity(0.7),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: <Widget>[
            Flexible(
              child: Container(
                color: Colors.white,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 2, bottom: 2, right: 10),
                      height: 50,
                      child: TextField(
                        style: TextStyle(),
                        decoration: InputDecoration(
                            suffixIcon: IconButton(icon: searchButton, onPressed: () {}),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: UIColors.lightGrey1, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: UIColors.lightGrey1, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: 'Search',
                            hintStyle:
                                TextStyle(color: UIColors.grey, fontSize: 12)),
                      ),
                    ),
                    menuItems(),
                    SizedBox(
                      height: 20,
                    ),
                    playListItems(),

                    Container(
                      padding: EdgeInsets.all(10),
                        child: Row(children: [
                          IconButton(
                            icon: Image.asset(
                              "images/icons/settings.png",
                              fit: BoxFit.contain,
                              width: 20,
                              height: 20,
                            ),
                            onPressed: null,
                          ),
                          Text("Preference"),

                        ],)),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.symmetric(horizontal:60,vertical:20),

                        decoration: BoxDecoration(
                            color: UIColors.pink,
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        child: Text("Download App",style: TextStyle(color: UIColors.white),))
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: SingleChildScrollView(child: HomeBody()),
            ),
          ],
        ),
      ),
    );
  }
}
