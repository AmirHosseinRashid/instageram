import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_instageram/contexts/context.dart';

class BootemSheetcontext extends StatefulWidget {
  const BootemSheetcontext({this.controller, super.key});
  final ScrollController? controller;

  @override
  State<BootemSheetcontext> createState() => _BootemSheetcontextState();
}

class _BootemSheetcontextState extends State<BootemSheetcontext> {
  bool buttonSend = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36), topRight: Radius.circular(36)),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            // height: 300,
            padding: EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(255, 255, 255, 0.5),
                  Color.fromRGBO(255, 255, 255, 0.2),
                ],
              ),
            ),
            child: _getContent(),
          ),
        ),
      ),
    );
  }

  Widget _getContent() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CustomScrollView(
          controller: widget.controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 22),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: whiteColor,
                      ),
                      width: 67,
                      height: 5,
                    ),
                  ),
                  // _________________\\
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 23,
                            fontFamily: 'GB',
                            fontWeight: FontWeight.w600),
                      ),
                      Image.asset('images/icon_share_bottomsheet.png')
                    ],
                  ),
                  SizedBox(height: 35),
                  Container(
                    width: 340,
                    height: 46,
                    margin: EdgeInsets.only(bottom: 32),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/icon_search.png',
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                color: whiteColor,
                                fontFamily: 'GB',
                              ),
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'Search...',
                                hintStyle: TextStyle(
                                  color: whiteColor,
                                  fontFamily: 'GB',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      // _________________\\
                    ),
                  )
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(((context, index) {
                return getItemGridList();
              }), childCount: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 120),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 90))
          ],
        ),
        Visibility(
          visible: buttonSend,
          child: Positioned(
            bottom: 47,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (buttonSend == true) {
                    buttonSend = false;
                  } else {
                    buttonSend = true;
                  }
                });
              },
              child: Text('Send'),
            ),
          ),
        )
      ],
    );
  }

  Widget getItemGridList() {
    // bool buttonSend = false;
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (buttonSend == false) {
              buttonSend = true;
              print('1');
            } else {
              buttonSend = false;
              print('2');
            }
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 99, 99, 99),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('images/AmirhossinRashid.png'),
            ),
          ),
        ),
        SizedBox(height: 9),
        Text(
          'Amirhossin Rashid',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: whiteColor,
            fontFamily: 'GB',
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
