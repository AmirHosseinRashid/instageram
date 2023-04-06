import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_instageram/contexts/context.dart';

class SwitchAccountScreen extends StatefulWidget {
  const SwitchAccountScreen({super.key});

  @override
  State<SwitchAccountScreen> createState() => _SwitchAccountScreenState();
}

class _SwitchAccountScreenState extends State<SwitchAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('images/switch_account_background.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 190,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                      child: Container(
                        width: 330.0,
                        height: 352.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              whitegradient1,
                              whitegradient2,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32),
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: blackColor, width: 2.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              // _________________________image
                              child: Image(
                                image:
                                    AssetImage('images/AmirhossinRashid.png'),
                                width: 129,
                                height: 129,
                              ),
                            ),
                            // _________________________Txt User
                            SizedBox(height: 20),
                            Text(
                              'Amirhossin Rashid',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'GB'),
                            ),
                            // _________________________Button Confirm
                            SizedBox(height: 20),
                            ElevatedButton(
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                              onPressed: () {},
                              child: Text('Confirm'),
                            ),
                            // _________________________Button switch
                            SizedBox(height: 20),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'switch account',
                                  style: TextStyle(color: whiteColor),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(top: 125.0, bottom: 63),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? /',
                    style: TextStyle(color: greyColor),
                  ),
                  Text(
                    ' Sign up',
                    style: TextStyle(color: whiteColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
