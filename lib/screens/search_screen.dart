import 'package:flutter/material.dart';
import 'package:flutter_application_instageram/contexts/context.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class search_screen extends StatefulWidget {
  const search_screen({super.key});

  @override
  State<search_screen> createState() => _search_screenState();
}

class _search_screenState extends State<search_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: PreferredSizeWidget(),
      body: SafeArea(
        child: Column(
          children: [
            // ---------ListUser
            _getUserList(),
            // ---------GridView custom
            _gridView_custom(),
          ],
        ),
      ),
    );
  }

// ___________________________________________________\\
// ---------Appbar
  PreferredSizeWidget() {
    return AppBar(
      backgroundColor: blackColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Container(
        decoration: BoxDecoration(
            color: blackColor2, borderRadius: BorderRadius.circular(13.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("images/icon_search.png"),
                  // -------------TextField\\
                  SizedBox(width: 5),
                  SizedBox(
                    width: 250.0,
                    child: TextField(
                      style: TextStyle(color: whiteColor),
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: whiteColor, fontSize: 14.0),
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset("images/icon_scan.png"),
            ],
          ),
        ),
      ),
    );
  }

// ---------ListUser
  Widget _getUserList() {
    List user = [
      'Amirhossin Rashid',
      'Majid',
      'Alireza',
      'Dc Game',
      'DcGame.ir',
      'Dc Shop',
      'Bermuda Rp',
      'DeviL',
      'Amu DeviL',
      'Haj DevIL'
    ];
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              color: blackColor2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text(
                '${user[index]}',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontFamily: 'GM',
                ),
              ),
            ),
          );
        },
      ),
    );
  }

// ---------GridView custom
  Widget _gridView_custom() {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          // SliverToBoxAdapter(
          //   child: _getUserList(),
          // ),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: blackColor2,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FittedBox(
                        child: Image.asset('images/item$index.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                childCount: 10,
              ),
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  QuiltedGridTile(2, 1),
                  QuiltedGridTile(2, 2),
                  // _________
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
