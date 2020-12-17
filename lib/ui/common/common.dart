import 'package:flutter/material.dart';

const TextStyle desTextStyle = TextStyle(fontSize: 13, height: 1.5);

Widget buildDescriptionWidget(String des){
 return Container(
    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black45,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
    child: Text(des,
      style: desTextStyle,
    ),
  );
}
