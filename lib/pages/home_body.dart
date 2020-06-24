import 'package:desktop/models/radio.dart';
import 'package:desktop/models/recommendation.dart';
import 'package:desktop/models/song.dart';
import 'package:desktop/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int buttonClick = 0;

  List radioStation = [
    Radios(
        image:
            "https://normandierecords.com/wp-content/uploads/2019/10/KEXP-Logo500x500.png",
        name: "KEXP 90.3 FM",
        location: "Seattle",
        rating: 3.2),
    Radios(
        image:
            "https://www.kcrw.com/images/default-share-image/@@images/image/page-header?v=1573167935.93",
        name: "KCRW 89.9 FM",
        location: "Santa Monica, Cali",
        rating: 3.7),
    Radios(
        image:
            "https://freshair.org/wp-content/uploads/2018/08/19756374_10154856468507831_4644008684210424446_n.jpg",
        name: "WWPR 105.1 FM",
        location: "New York",
        rating: 3.5),
    Radios(
        image:
            "https://mytuner.global.ssl.fastly.net/media/tvos_radios/Fa9WqwZkAh.png",
        name: "XRAY.fm 107.1",
        location: "Portland",
        rating: 4.0),
    Radios(
        image:
            "https://dublab-api-1.s3.amazonaws.com/uploads/2019/09/dublab_brazil_logo_600x600.png",
        name: "Dublab",
        location: "Los Angeles",
        rating: 5.0),
    Radios(
        image:
            "https://s3.amazonaws.com/factmag-images/wp-content/uploads/2015/11/nts-fb-logo2.jpg",
        name: "NTS Radio",
        location: "London",
        rating: 2.5),
    Radios(
        image:
            "https://normandierecords.com/wp-content/uploads/2019/10/KEXP-Logo500x500.png",
        name: "KEXP 90.3 FM",
        location: "Seattle",
        rating: 3.2),
    Radios(
        image:
            "https://www.kcrw.com/images/default-share-image/@@images/image/page-header?v=1573167935.93",
        name: "KCRW 89.9 FM",
        location: "Santa Monica, Cali",
        rating: 3.7),
    Radios(
        image:
            "https://freshair.org/wp-content/uploads/2018/08/19756374_10154856468507831_4644008684210424446_n.jpg",
        name: "WWPR 105.1 FM",
        location: "New York",
        rating: 3.5),
    Radios(
        image:
            "https://mytuner.global.ssl.fastly.net/media/tvos_radios/Fa9WqwZkAh.png",
        name: "XRAY.fm 107.1",
        location: "Portland",
        rating: 4.0),
    Radios(
        image:
            "https://dublab-api-1.s3.amazonaws.com/uploads/2019/09/dublab_brazil_logo_600x600.png",
        name: "Dublab",
        location: "Los Angeles",
        rating: 5.0),
    Radios(
        image:
            "https://s3.amazonaws.com/factmag-images/wp-content/uploads/2015/11/nts-fb-logo2.jpg",
        name: "NTS Radio",
        location: "London",
        rating: 2.5),
  ];

  List recommendation = [
    Recommendation(image: "images/category/speaker.png",title: "Music"),
    Recommendation(image: "images/category/gym.png",title: "Sports"),
    Recommendation(image: "images/category/news-admin.png",title: "News"),
    Recommendation(image: "images/category/film-reel.png",title: "Movies"),
    Recommendation(image: "images/category/kitchen.png",title: "Chef"),
    Recommendation(image: "images/category/microphone.png",title: "Podcasts"),
    Recommendation(image: "images/category/bbc.png",title: "BBC"),
    Recommendation(image: "images/category/help.png",title: "Charity"),

  ];

  List songList = [
    Song(
        image:
        "https://i1.wp.com/www.celebritiesbuzz.com.gh/wp-content/uploads/2018/08/noella-wiyaala-africa-summer-festival-2018-photos5.jpg?resize=960%2C884&ssl=1",
        title: "Village Sex",
        artiste: "Wiyaala",
        duration: "3:42"),

    Song(
        image:
        "https://i1.wp.com/www.ghgossip.com/wp-content/uploads/2018/11/wanlov-kubolor.jpg?fit=499%2C300&ssl=1",
        title: "Human Being (Just Like You",
        artiste: "Wanlov",
        duration: "2:52"),

    Song(
        image:
        "https://theindependentghana.com/wp-content/uploads/2020/05/AY-Poyoo5.jpg",
        title: "I'm the Goat",
        artiste: "AY Poyoo",
        duration: "3:42"),

    Song(
        image:
        "https://theindependentghana.com/wp-content/uploads/2020/05/AY-Poyoo5.jpg",
        title: "I'm the Goat",
        artiste: "AY Poyoo",
        duration: "3:42"),
  ];

  @override
  Widget build(BuildContext context) {
    final boxShadow = BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    );

    final borderRadius = BorderRadius.all(Radius.circular(20));
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(
        children: [
          Row(
            children: [
              Flexible(
                  flex: 2,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        boxShadow: [boxShadow],
                        borderRadius: borderRadius,
                        image: DecorationImage(
                            image: AssetImage(
                                "images/category/mind-the-music.png"),
                            fit: BoxFit.fill)),
                  )),
              SizedBox(
                width: 20,
              ),
              Flexible(
                  child: Container(
                height: 150,
                padding: EdgeInsets.all(8),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: UIColors.white,
                    boxShadow: [boxShadow],
                    borderRadius: borderRadius),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: borderRadius,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://pbs.twimg.com/profile_images/1272137685285711874/M2AYqhHe_400x400.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .2,
                     //   margin: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Silas Lawer",
                              style: TextStyle(
                                  color: UIColors.lightBlack,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Premium",
                              style: TextStyle(
                                  color: UIColors.violet.withOpacity(0.5),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                      text: "120\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900),
                                      children: [
                                        TextSpan(
                                          text: "Tracks",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,color: UIColors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text.rich(
                                    TextSpan(
                                      text: "1.5K",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900),
                                      children: [
                                        TextSpan(
                                          text: " Followers",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,color: UIColors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Card(
                                  shape: CircleBorder(),
                                  elevation: 8,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: UIColors.white,
                                    child: CircleAvatar(
                                      backgroundColor: UIColors.orange.withOpacity(0.4),
                                      radius: 13,child: Center(
                                        child: Image.asset(
                                          "images/icons/fire.png",
                                          width: 12,
                                          height: 12,fit: BoxFit.contain,
                                        )),
                                   //   backgroundImage: AssetImage('images/icons/fire.png'),
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: CircleBorder(),
                                  elevation: 8,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: UIColors.white,
                                    child: CircleAvatar(
                                      backgroundColor: UIColors.lightViolet,
                                      radius: 13,child: Center(
                                        child: Image.asset(
                                          "images/icons/medal.png",
                                          width: 12,
                                          height: 12,fit: BoxFit.contain,
                                        )),
                                      //   backgroundImage: AssetImage('images/icons/fire.png'),
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: CircleBorder(),
                                  elevation: 8,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: UIColors.white,
                                    child: CircleAvatar(
                                      backgroundColor: UIColors.lightPink,
                                      radius: 13,child: Center(
                                        child: Image.asset(
                                          "images/icons/standard.png",
                                          width: 12,
                                          height: 12,fit: BoxFit.contain,
                                        )),
                                      //   backgroundImage: AssetImage('images/icons/fire.png'),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: UIColors.grey,
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Flexible(
                  child: Container(
                height: 250,
                padding: EdgeInsets.all(8),
                alignment: Alignment.topCenter,
                child: Material(
                  borderRadius: borderRadius,
                  child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                                margin: EdgeInsets.all(16),
                                child: Text(
                                  "Popular",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: UIColors.lightBlack,
                                  ),
                                )),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        buttonClick = 1;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: buttonClick == 1
                                                  ? UIColors.violet
                                                  : UIColors.grey),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Center(
                                          child: Icon(
                                        Icons.arrow_back_ios,
                                        size: 13,
                                      )),
                                    )),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      buttonClick = 2;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: buttonClick == 2
                                                ? UIColors.violet
                                                : UIColors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 13,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.topLeft,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ...radioStation
                                  .map((c) => radioCard(context, c))
                                  .toList(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Flexible(
                  child: Container(
                    height: 350,
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        color: UIColors.white,
                        boxShadow: [boxShadow],
                        borderRadius: borderRadius),
                    child: Material(
                      elevation: 0,
                      color: Colors.transparent,
                      child: ListView(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.all(16),
                              child: Row(children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                    Text(
                                      "Local Radio",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                        color: UIColors.lightBlack,
                                      ),
                                    ),
                                    Text(
                                      "Tracks popular on Radio right now",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: UIColors.grey,
                                      ),
                                    ),
                                  ],),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              border: Border.all(color: UIColors.grey),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                          child: Row(children: [
                                            Expanded(flex: 2,child: Text("See all",style: TextStyle(color: UIColors.lightBlack,fontSize: 12,fontWeight: FontWeight.w600),)),
                                    Flexible(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 13,
                                      ),
                                    )
                                          ],
                                          )
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],)),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            alignment: Alignment.topLeft,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ...songList
                                      .map((c) => songCard(context, c))
                                      .toList(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Flexible(
                  child: Container(
                height: 350,
                padding: EdgeInsets.all(8),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: UIColors.white,
                    boxShadow: [boxShadow],
                    borderRadius: borderRadius),
                child: Material(
                  elevation: 0,
                  color: Colors.transparent,
                  child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.all(16),
                          child: Text(
                            "Recommended for You",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: UIColors.lightBlack,
                            ),
                          )),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: categoryCard(context,recommendation[0]),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: categoryCard(context,recommendation[1]),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: categoryCard(context,recommendation[2]),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: categoryCard(context,recommendation[3]),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: categoryCard(context,recommendation[4]),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: categoryCard(context,recommendation[5]),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: categoryCard(context,recommendation[6]),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: categoryCard(context,recommendation[7]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget categoryCard(BuildContext context,Recommendation recommendation) {
    return InkWell(
      hoverColor: UIColors.violet.withOpacity(0.1),
      onTap: () {
        print("asdasdasdas");
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: UIColors.lightGrey1.withOpacity(0.7),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 30,
              height: 70,
              alignment: Alignment.topCenter,
              child: Center(
                child: Image.asset(
                  recommendation.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Center(
                child: Text(
                  recommendation.title,
              style: TextStyle(fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            )),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  Widget radioCard(
    BuildContext context,
    Radios radio,
  ) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 110,
            width: 120,
            margin: EdgeInsets.only(
              left: 7.5,
              right: 7.5,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                image: DecorationImage(
                  image: NetworkImage(radio.image),
                  fit: BoxFit.cover,
                )),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 40,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: UIColors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            size: 12,
                          ),
                          Text(
                            radio.rating.toString(),
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 120,
              margin: EdgeInsets.only(right: 7.5, top: 3),
              child: Text(radio.name),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 7.5,
            ),
            child: Text(
              radio.location,
              style: TextStyle(color: UIColors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget songCard(
      BuildContext context,
      Song song,
      ) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(
                left: 7.5,
                right: 7.5,
                top: 7.5,
                bottom: 7.5,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(song.image),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Container(
                  margin: EdgeInsets.only(right: 7.5, top: 15),
                  child: Text(song.title),
                ),
                Container(
                  margin: EdgeInsets.only(right: 7.5, top: 3),
                  child: Text(song.artiste,style: TextStyle(color: UIColors.grey,fontSize: 12),),
                ),
              ],),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 7.5, top: 15),
                  child: Text(song.duration,style: TextStyle(color: UIColors.grey,fontSize: 12),),
                ),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 7.5, top: 15),
                    child: Icon(Icons.star_border,color: Colors.yellow,size: 15,)),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 7.5, top: 15),
                  child: Icon(Icons.play_circle_filled,color: UIColors.violet,)),
              ),

            ],),
          ),
          Container(
            margin: EdgeInsets.only(right: 7.5, top: 15),
            child: Icon(Icons.more_vert,color: UIColors.grey,),
          ),
        ],
      ),
    );
  }
}
