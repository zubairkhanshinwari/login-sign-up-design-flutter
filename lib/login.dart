import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'widget.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Column(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width *1.0,
          margin: EdgeInsets.only(top: 23),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: ExactAssetImage('images/one.png'),
              fit: BoxFit.fill,
            )
         ),
          child: Container(
            margin: EdgeInsets.only(top:120,left: 40),
              child: Text('Welcome\nBack',style: TextStyle(color: Colors.white,fontSize: 35,),)),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: <Widget>[
            TextFeild(name: "Email",color: Colors.black87),
            SizedBox(height: 20),
            TextFeild(name: "Password",color: Colors.black87),
          ])),
          ButtonText(text: 'Sign in',color: Colors.black),
        SizedBox(height: 40,),

        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Container(
                child: BottomText(text: 'Sign up',color: Colors.black))),
              SizedBox(width: 40,),
              BottomText(text: 'Forgot password',color:Colors.black)
          ],)
      ]),
    )
    );
  }
}
