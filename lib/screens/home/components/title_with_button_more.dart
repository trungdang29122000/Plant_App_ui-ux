import 'package:flutter/material.dart';

import '../../../constrants.dart';
class TitleWithButton extends StatelessWidget{
  final String title;
  final Function onpress;

  TitleWithButton({required this.title,required this.onpress});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustoneUnderline(text: title),
          Spacer(),
          FlatButton(
              color: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              onPressed: (){},
              child:Text ('More',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),)
          )
        ],
      ),
    );
  }
}
class TitleWithCustoneUnderline extends StatelessWidget{
  final String text;

  TitleWithCustoneUnderline({required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: kDefaultPadding/4
            ),
            child: Text(text,
              style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
              ),),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding/4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}
