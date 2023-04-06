import 'package:flutter/material.dart';
import 'package:flutter_application_instageram/contexts/context.dart';
import 'package:flutter_application_instageram/screens/login_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class postpage extends StatefulWidget {
  const postpage({super.key});

  @override
  State<postpage> createState() => _postpageState();
}

class _postpageState extends State<postpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: PreferredSizeWidget(),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          _gridView_custom(),
          _bottom_Button(),
        ],
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
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Post',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 18,
                  fontFamily: 'GM',
                ),
              ),
              SizedBox(width: 15),
              Image.asset("images/icon_arrow_down.png"),
            ],
          ),
          Row(
            children: [
              Text(
                'Next',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 18,
                  fontFamily: 'GM',
                ),
              ),
              SizedBox(width: 15),
              Image.asset("images/icon_arrow_right_box.png"),
            ],
          ),
        ],
      ),
    );
  }

// ---------GridView custom Post Page
  Widget _gridView_custom() {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(bottom: 100, left: 10, right: 10),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Container(
                        color: blackColor2,
                        child: Image.asset('images/item${index + 2}.png'),
                      ),
                    ),
                  );
                },
                childCount: 11,
              ),
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                pattern: [
                  QuiltedGridTile(3, 3),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _bottom_Button() {
    return Container(
      width: double.infinity,
      height: 83,
      decoration: BoxDecoration(
        color: blackColor2,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 17, right: 17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Draft',
              style:
                  TextStyle(color: pinkColor, fontFamily: 'GB', fontSize: 16),
            ),
            Text(
              'Gallery',
              style:
                  TextStyle(color: whiteColor, fontFamily: 'GB', fontSize: 16),
            ),
            Text(
              'Take',
              style:
                  TextStyle(color: whiteColor, fontFamily: 'GB', fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
