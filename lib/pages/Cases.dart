import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Cases extends StatefulWidget {
  @override
  _CasesState createState() => _CasesState();
}

class _CasesState extends State<Cases> {
  String country='two';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0,0,0,0),
      child: Column(
        children: <Widget>[
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 200,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: DropdownButton <String> (
              value: country,
              onChanged: (String newValue){
                setState(() {
                  country = newValue;
                });
              },
              items: <String>['two','three','four'].map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList()
            ),
          ),
        ],
      ),
    );
  }
}
