import 'package:flutter/material.dart';
import 'package:flutter_application_instageram/contexts/context.dart';
import 'package:flutter_application_instageram/screens/activity_screen.dart';
import 'package:flutter_application_instageram/screens/home_screen.dart';
import 'package:flutter_application_instageram/screens/main_screen.dart';
import 'package:flutter_application_instageram/screens/post_screen.dart';
import 'package:flutter_application_instageram/screens/profile_screen.dart';
import 'package:flutter_application_instageram/screens/search_screen.dart';

import 'switch_screen.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  @override
  void initState() {
    super.initState();
    _focusNode1.addListener(() {
      setState(() {});
    });
    _focusNode2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff323A99), Color(0xffF98BFC)]),
      ),
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            _getimageContaner(),
            _getContanerBox(),
          ],
        ),
      ),
    );
  }

// ____________________________________________________\\
// ------------------------------Start Contaner Image
  Widget _getimageContaner() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 40,
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('images/rocket.png'),
              // fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }

// ------------------------------Start Contaner Box
  Widget _getContanerBox() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(width: double.infinity),
                  SizedBox(height: 50),
                  gettxtBox(),
                  SizedBox(height: 36),
                  getTextFieldEmail(),
                  SizedBox(height: 32),
                  getTextFieldPassword(),
                  SizedBox(height: 32),
                  ElevatedButton(
                    style: Theme.of(context).elevatedButtonTheme.style,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return mainscreen();
                        },
                      ));
                    },
                    child: Text('sign in'),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? /',
                        style: TextStyle(
                            color: greyColor, fontSize: 15, fontFamily: 'GB'),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            ' Sign up',
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 15,
                                fontFamily: 'GB'),
                          ))
                    ],
                  )
                ],
              )),
        ),
      ],
    );
  }

// ________________________Txt Sign in
  Widget gettxtBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sign in to ',
          style: TextStyle(color: whiteColor, fontFamily: 'GM', fontSize: 20),
        ),
        Image(image: AssetImage('images/mood.png'), width: 102, height: 25)
      ],
    );
  }

  // ________________________ email
  Widget getTextFieldEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TextField(
        focusNode: _focusNode1,
        style: TextStyle(color: whiteColor, fontFamily: 'GM', fontSize: 17),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greyColor, width: 3),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: pinkColor, width: 3),
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: 'Email',
          labelStyle: TextStyle(
              color: _focusNode1.hasFocus ? pinkColor : greyColor,
              fontFamily: 'GM',
              fontSize: 20),
        ),
      ),
    );
  }

// ________________________ Password
  Widget getTextFieldPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TextField(
        focusNode: _focusNode2,
        style: TextStyle(color: whiteColor, fontFamily: 'GM', fontSize: 17),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greyColor, width: 3),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: pinkColor, width: 3),
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: 'Password',
          labelStyle: TextStyle(
              color: _focusNode2.hasFocus ? pinkColor : greyColor,
              fontFamily: 'GM',
              fontSize: 20),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
  }
}
