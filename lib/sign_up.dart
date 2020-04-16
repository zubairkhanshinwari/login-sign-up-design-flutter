import 'package:flutter/material.dart';

import 'widget.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width *1.0,
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: ExactAssetImage('images/two.png'),
              fit: BoxFit.fill,
            )
        ),
        margin: EdgeInsets.only(top: 23),
        child: Column(
            children: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 180,top: 150),
              child: Text('Create\nAccount',style: TextStyle(fontSize: 35,color: Colors.white),)),
         Padding(
           padding: const EdgeInsets.all(20),
           child: Column(
               children: <Widget>[
                 TextFeild(name: "Name",color: Colors.white),
             SizedBox(height: 20),
                 TextFeild(name: "Email",color: Colors.white),
             SizedBox(height: 20),
                 TextFeild(name: "Password",color: Colors.white),
           ]),
         ),
              ButtonText( text: 'Sign Up',color: Colors.white,),
                 Container(
                   margin: EdgeInsets.only(right: 260,top: 20),
                     child: BottomText(text: 'Sign in',color: Colors.white)),

    ]),
      ),
    );
  }
}
