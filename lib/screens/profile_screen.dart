import 'package:flutter/material.dart';
import 'package:flutter_application_instageram/contexts/context.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              _getBannerProfile(),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _getHaderProfile(),
                    _getContentProfile(),
                  ],
                ),
              ),
              _getTabBar(),
            ];
          },
          body: TabBarView(
            children: [_getContentTabbar1(), _getContentTabbar2()],
          ),
        ),
      ),
    );
  }

// --------------------------------------- Start Banner Profile
  Widget _getBannerProfile() {
    return SliverAppBar(
      toolbarHeight: 80,
      backgroundColor: blackColor,
      automaticallyImplyLeading: false,
      actions: [Image.asset('images/menu.png')],
      expandedHeight: 115,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'images/banner.png',
          fit: BoxFit.cover,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(14),
        child: Container(
          height: 14,
          decoration: BoxDecoration(
              color: blackColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(17),
                topRight: Radius.circular(17),
              )),
        ),
      ),
    );
  }

// --------------------------------------- Start Header
  Widget _getHaderProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---------------left
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: pinkColor),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Image.asset('images/AmirhossinRashid.png'),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'امیرحسین رشید برنامه نویس موبایل',
                    style: TextStyle(
                        color: whiteColor, fontFamily: 'SM', fontSize: 12),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Amirhossin Rashid',
                    style: TextStyle(
                        color: greyColor, fontFamily: 'GB', fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          // ---------------right
          Spacer(),
          Row(
            children: [
              Image.asset('images/icon_profile_edit.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getContentProfile() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Container(
              width: 195,
              child: Text(
                'برنامه نویسی فلاتر، از سال 1401 فعالیت خود را در زمینه فلاتر آغاز کردم',
                style: TextStyle(
                    color: whiteColor, fontSize: 12, fontFamily: 'SM'),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(height: 7),
          // ---------------------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              children: [
                Image.asset('images/link.png'),
                SizedBox(width: 4),
                Text(
                  'yek.link/AmirhossinRashid',
                  style: TextStyle(
                    color: blueColor,
                    fontFamily: 'GB',
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          // ---------------------------------
          SizedBox(height: 17),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              children: [
                Image.asset('images/developer.png'),
                SizedBox(width: 4),
                Text(
                  'developer',
                  style: TextStyle(
                    color: greyColor,
                    fontFamily: 'GB',
                    fontSize: 13,
                  ),
                ),
                SizedBox(width: 15),
                Image.asset('images/mark.png'),
                SizedBox(width: 4),
                Text(
                  'IRAN',
                  style: TextStyle(
                    color: greyColor,
                    fontFamily: 'GB',
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          // ---------------------------------
          SizedBox(height: 17),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              children: [
                Text(
                  '9',
                  style: TextStyle(
                    color: whiteColor,
                    fontFamily: 'GB',
                    fontSize: 13,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  'Post',
                  style: TextStyle(
                    color: greyColor,
                    fontFamily: 'GM',
                    fontSize: 13,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  '16.2K',
                  style: TextStyle(
                    color: whiteColor,
                    fontFamily: 'GB',
                    fontSize: 13,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  'Followers',
                  style: TextStyle(
                    color: greyColor,
                    fontFamily: 'GB',
                    fontSize: 13,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  '1',
                  style: TextStyle(
                    color: whiteColor,
                    fontFamily: 'GB',
                    fontSize: 13,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  'Following',
                  style: TextStyle(
                    color: greyColor,
                    fontFamily: 'GB',
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          // -------------------------------
          SizedBox(height: 17),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: pinkColor,
                    fixedSize: Size(168, 46),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    textStyle: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontFamily: 'GB',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Follow'),
                ),
                // ==========
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(168, 46),
                    side: BorderSide(color: greyColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Message',
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 16,
                      fontFamily: 'GB',
                    ),
                  ),
                ),
              ],
            ),
          ),
          // _getHistoriList()
        ],
      ),
    );
  }
}

Widget _getHistoriList() {
  List imagehistroi = [
    'icon_plus.png',
    'FlutterVIP.png',
    'Support.png',
    'Projects.png',
    'Shoping.png',
  ];
  List Titlehistroi = [
    '       New',
    ' Flutter VIP',
    ' Support',
    ' Projects',
    ' Shoping',
  ];
  return Container(
    margin: EdgeInsets.only(top: 20, bottom: 20),
    height: 90,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            children: [
              index == 0
                  ? Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            'images/${imagehistroi[0]}',
                            width: 26,
                            height: 26,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: whiteColor),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    )
                  : FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset(
                        'images/${imagehistroi[index]}',
                        fit: BoxFit.cover,
                      ),
                    ),
              SizedBox(height: 10),
              Text(
                '${Titlehistroi[index]}',
                style: TextStyle(
                    color: whiteColor, fontSize: 12, fontFamily: 'GS'),
                textAlign: TextAlign.right,
              )
            ],
          ),
        );
      },
    ),
  );
}

// --------------------------------------- Start tabbar

Widget _getTabBar() {
  return SliverPersistentHeader(
    pinned: true,
    delegate: TabBarViewDelegate(
      TabBar(
        indicatorColor: pinkColor,
        indicatorWeight: 2,
        tabs: [
          Tab(
            child: Image.asset(
              'images/icon_tab_posts.png',
              width: 20,
              height: 20,
            ),
          ),
          Tab(
            child: Image.asset(
              'images/icon_save.png',
              width: 17,
              height: 20,
            ),
          ),
        ],
      ),
    ),
  );
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBarViewDelegate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      child: _tabBar,
      color: blackColor,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}

// --------------------------------------- Start content tabbar
Widget _getContentTabbar1() {
  return Container(
    color: blackColor,
    child: Expanded(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(bottom: 100, top: 20, left: 3, right: 3),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Container(
                        color: blackColor2,
                        child: Image.asset('images/item${index}.png'),
                      ),
                    ),
                  );
                },
                childCount: 9,
              ),
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(1, 1),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

//______two
Widget _getContentTabbar2() {
  return Container(
    color: blackColor,
    child: Center(
      child: Text(
        ' Nakhondam 😎',
        style: TextStyle(fontSize: 25, fontFamily: 'SM', color: whiteColor),
      ),
    ),
  );
}
