import 'package:architects/ui/page_detail.dart';
import 'package:architects/utils/colors.dart';
import 'package:architects/widget/widget_bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderWidget(),
              Divider(
                color: whiteTextColorOp,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23.0, top: 30.0),
                child: Text(
                  "Dark \nInterior",
                  style: TextStyle(
                    fontFamily: 'Regular',
                    color: whiteTextColor,
                    fontSize: 60.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23.0),
                child: Container(
                  width: double.infinity,
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      
                      Positioned(
                        top: 0.2,
                        right: 5.0,
                        child: Container(
                          child: BorderedText(
                            strokeColor: whiteTextColorOp,
                            strokeWidth: 2,
                            child: Text(
                              "02",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 150,
                                  decorationColor: primaryColor,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                            padding: EdgeInsets.only(right: 2.0, top: 140.0),
                            height: MediaQuery.of(context).size.height / 2,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Container(
                                    
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => DetailPage(
                                                    imageName:
                                                        'assets/images/$index.jpeg')));
                                      },
                                      child: Container(
                                        color: primaryColor,
                                        child: Image.asset(
                                            'assets/images/$index.jpeg',
                                            fit: BoxFit.fitHeight),
                                      ),
                                    ),
                                  );
                                })),
                      ),
                      Positioned(
                        top: 30,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                                width: 25,
                                child: Divider(
                                  color: secondaryColor,
                                  thickness: 2.0,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                  child: Text(
                                "Learn more",
                                style: TextStyle(
                                    color: secondaryColor,
                                    letterSpacing: 2.0,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Architects",
              style: TextStyle(
                color: whiteTextColor,
                fontFamily: 'Regular',
                fontWeight: FontWeight.w200,
                fontSize: 23.0,
                letterSpacing: 4.0,
              )),
          Icon(
            Ionicons.ios_menu,
            color: whiteTextColorOp,
            size: 23.0,
          )
        ],
      ),
    );
  }
}
