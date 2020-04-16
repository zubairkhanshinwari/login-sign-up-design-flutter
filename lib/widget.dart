import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFeild extends StatelessWidget {
  String name;
 final  Color color;

  TextFeild({this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  TextField(
          decoration: InputDecoration(
            border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0),
              borderSide: BorderSide(
              ),
            ),
            hintText: name, hintStyle: TextStyle(fontSize: 20.0, color: (color)),)),
    );
  }
}

class ButtonText extends StatelessWidget {
  String text;
  final Color color;
  ButtonText({this.text,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
    child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(text,style: TextStyle(color: color,fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(width: 20,),
            MaterialButton(
                onPressed: () {},
                color: Colors.black87,
                textColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward,
                  size: 24,
                ),
                padding: EdgeInsets.all(20),
                shape: CircleBorder())]),
      );
  }
}

class BottomText extends StatelessWidget {
    String text;
    final Color color;

    BottomText({this.text, this.color});

    @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,style: TextStyle( decoration: TextDecoration.underline,fontWeight: FontWeight.bold,color: (color)    )),
    );
  }
}
