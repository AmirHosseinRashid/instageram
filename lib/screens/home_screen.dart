import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_instageram/contexts/context.dart';
import 'package:dotted_border/dotted_border.dart';

import 'Modal_Bottom_Sheet.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

List<String> _LicksNumber = ['50k', '15.5k'];
List<String> _ImagePost = [
  'profile.png',
  'post_cover.png',
  'AmirhossinRashid.png'
];

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        appBar: referredSizeWidget(),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 120,
                  child: _getStoryUserList(),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return _getPostListContent();
                  },
                  childCount: 1,
                ),
              )
            ],
          ),
        ));
  }

// ___________________________________________________\\

  referredSizeWidget() {
    return AppBar(
      backgroundColor: blackColor,
      elevation: 0,
      actions: [
        InkWell(
          onTap: () {},
          child: Image(
            image: AssetImage('images/icon_direct.png'),
          ),
        )
      ],
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: Image(
          image: AssetImage('images/moodinger_logo.png'),
        ),
      ),
      leadingWidth: 140,
    );
  }

  Widget _getMyStory() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3, vertical: 12),
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(color: whiteColor, width: 2),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Image(
            image: AssetImage('images/icon_plus.png'),
          ),
        ),
        Text(
          'Your Story',
          style: TextStyle(color: Colors.white, fontFamily: 'GB', fontSize: 14),
        ),
      ],
    );
  }

  Widget _getStroyListBox(String ProfileImage) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(17),
            padding: EdgeInsets.all(4),
            color: pinkColor,
            dashPattern: [20, 10],
            strokeWidth: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Container(
                height: 58,
                width: 58,
                color: Color.fromARGB(255, 99, 99, 99),
                child: Image.asset('images/$ProfileImage'),
              ),
            ),
          ),
        ),
        Container(
          width: 58,
          child: Text(
            'Amir...',
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.white, fontFamily: 'GB', fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _getStoryUserList() {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? _getMyStory()
              : _getStroyListBox('AmirhossinRashid.png');
        },
      ),
    );
  }

  Widget _getStroyBox(String ProfileImage) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(4),
      color: pinkColor,
      dashPattern: [38, 9],
      strokeWidth: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: 38,
          width: 38,
          color: Color.fromARGB(255, 99, 99, 99),
          child: Image.asset('images/$ProfileImage'),
        ),
      ),
    );
  }

  Widget _getHeaderPost(String PrfileImage, String Username, String Titleinfo) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          _getStroyBox(PrfileImage),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$Username',
                  style: TextStyle(
                      color: whiteColor, fontFamily: 'GB', fontSize: 12.0),
                ),
                Text(
                  '$Titleinfo',
                  style: TextStyle(
                      color: whiteColor, fontFamily: 'SM', fontSize: 12.0),
                )
              ],
            ),
          ),
          Spacer(),
          Image.asset('images/icon_menu.png'),
        ],
      ),
    );
  }

  Widget _getPostContent(List LicksNumber, String ImagePost) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              width: 394,
              height: 440,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Positioned(
                    top: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'images/${ImagePost}',
                        width: 394,
                        height: 390,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15.01,
                    right: 15,
                    child: Image.asset('images/icon_video.png'),
                  ),
                  Positioned(
                    bottom: 15,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 0.5),
                                  Color.fromRGBO(255, 255, 255, 0.2),
                                ],
                              ),
                            ),
                            width: 340,
                            height: 46,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // ---Licks
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (LickImage ==
                                              'icon_activity_navigation_active.png') {
                                            LickImage = 'icon_hart.png';
                                            print('1');
                                          } else {
                                            LickImage =
                                                'icon_activity_navigation_active.png';
                                            print('2');
                                          }
                                        });
                                      },
                                      child: Image.asset('images/$LickImage'),
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      '${LicksNumber[1]}',
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16,
                                        fontFamily: 'GB',
                                      ),
                                    ),
                                  ],
                                ),
                                // -------comments
                                // SizedBox(width: 42),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/icon_comments.png',
                                    ),
                                    SizedBox(width: 6),
                                    InkWell(
                                      onTap: () {
                                        setState(() {});
                                      },
                                      child: Text(
                                        '1.5 k',
                                        style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 16,
                                          fontFamily: 'GB',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // -------shares
                                // SizedBox(width: 42),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            barrierColor: Colors.transparent,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: true,
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (BuildContext contex) {
                                              return Padding(
                                                padding: EdgeInsets.only(
                                                    bottom:
                                                        MediaQuery.of(context)
                                                            .viewInsets
                                                            .bottom),
                                                child: DraggableScrollableSheet(
                                                    initialChildSize: 0.4,
                                                    maxChildSize: 0.62,
                                                    minChildSize: 0.3,
                                                    builder:
                                                        (BuildContext contex,
                                                            Controller) {
                                                      return BootemSheetcontext(
                                                        controller: Controller,
                                                      );
                                                    }),
                                              );
                                            });
                                      },
                                      child: Image.asset(
                                        'images/icon_share.png',
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                  ],
                                ),
                                // -------save
                                // SizedBox(width: 42),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/icon_save.png',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getPostListContent() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            SizedBox(height: 10),
            _getHeaderPost('AmirhossinRashid.png', 'Amirhossin Rashid',
                'امیرحسین رشید برنامه نویس موبایل'),
            SizedBox(height: 20),
            _getPostContent(_LicksNumber, 'AmirhossinRashid.png'),
            SizedBox(height: 20),
            _getHeaderPost(
                'profile.png', 'AmirhossinRashid_', 'برنامه نویس موبایل'),
            SizedBox(height: 20),
            _getPostContent(_LicksNumber, 'post_cover.png'),
          ],
        );
      },
    );
  }
}
