import 'package:architects/utils/colors.dart';
import 'package:architects/utils/constants.dart';
import 'package:architects/widget/custom_border_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailPage extends StatelessWidget {
  final String imageName;
  const DetailPage({Key key,@required this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 1.69,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Positioned(
                    child: Image.asset(imageName, fit: BoxFit.fill),
                  ),
                  Positioned(
                    top: 25,
                    right: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        EvilIcons.close,
                        color: whiteTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row1(),
            Row2(),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Icon(Entypo.dots_three_horizontal, color: secondaryColor),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 60.0,
                  child: CustomBorderButtonWidget(buttonColor: primaryColor,borderColor: secondaryColor,textColor: secondaryColor,text:"Pre Order"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Row2 extends StatelessWidget {
  const Row2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DescriptionItem(title: colorTitle, description: color),
          DescriptionItem(title: companyTitle, description: company)
        ],
      ),
    );
  }
}

class Row1 extends StatelessWidget {
  const Row1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 30.0, right: 20.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DescriptionItem(title: designerTitle, description: designer),
          DescriptionItem(title: yearTitle, description: year)
        ],
      ),
    );
  }
}



class DescriptionItem extends StatelessWidget {
  final title;
  final description;
  const DescriptionItem({
    Key key,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,
              style: TextStyle(
                  color: whiteTextColorOp,
                  fontFamily: 'Regular',
                  fontWeight: FontWeight.normal)),
          Text(description,
              style: TextStyle(
                  color: whiteTextColor,
                  fontFamily: 'Regular',
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
