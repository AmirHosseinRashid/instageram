import 'package:flutter/material.dart';
import 'package:flutter_application_instageram/contexts/context.dart';
import 'package:flutter_application_instageram/model/enums/activity_type_enume.dart';

class activitypage extends StatefulWidget {
  activitypage({super.key});

  @override
  State<activitypage> createState() => _activitypageState();
}

TabController? _tabController;

class _activitypageState extends State<activitypage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      // appBar: PreferredSizeWidget(),
      body: SafeArea(
        child: Column(
          children: [
            _getTabbar(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _getPage_Following(),
                  _getPage_You(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

// ___________________________________________________\\
  Widget _getTabbar() {
    return Container(
      height: 50,
      width: double.infinity,
      color: blackColor,
      child: TabBar(
        indicatorColor: pinkColor,
        indicatorWeight: 2,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 16),
        controller: _tabController,
        tabs: [
          Text(
            'Following',
            style: TextStyle(fontSize: 17, fontFamily: 'GB'),
          ),
          Text(
            'You',
            style: TextStyle(fontSize: 17, fontFamily: 'GB'),
          ),
        ],
      ),
    );
  }

  Widget _getPage_Following() {
    return Container(
      // color: Colors.red,
      child: CustomScrollView(
        slivers: [
          // ---------------------------------------------- new
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 20,
              ),
              child: Text(
                'New',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'GB',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _getRowFllowing(activityStatus.message),
              childCount: 2,
            ),
          ),
          // ---------------------------------------------- Today
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 20,
              ),
              child: Text(
                'Today',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'GB',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _getRowFllowing(activityStatus.lick),
              childCount: 2,
            ),
          ),
          // ---------------------------------------------- This week
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 20,
              ),
              child: Text(
                'This week',
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'GB',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _getRowFllowing(activityStatus.following),
              childCount: 3,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getRowFllowing(activityStatus status) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: pinkColor,
            ),
          ),
          SizedBox(width: 7),
          SizedBox(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("images/profile.png"),
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Amirhossin Rashid',
                    style: TextStyle(
                        color: whiteColor, fontFamily: 'GB', fontSize: 12),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Started following',
                    style: TextStyle(
                        color: whiteColor, fontFamily: 'GM', fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'you',
                    style: TextStyle(
                        color: greyColor, fontFamily: 'GM', fontSize: 12),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '3min',
                    style: TextStyle(
                        color: greyColor, fontFamily: 'GB', fontSize: 10),
                  ),
                ],
              )
            ],
          ),
          Spacer(),
          _getActionActivityRow(status)
        ],
      ),
    );
  }

  Widget _getActionActivityRow(activityStatus status) {
    switch (status) {
      case activityStatus.following:
        // ----------------- ElevatedButton Message
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: pinkColor,
            fixedSize: Size(70, 36),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            textStyle: TextStyle(
              color: whiteColor,
              fontSize: 12,
              fontFamily: 'GB',
              fontWeight: FontWeight.w400,
            ),
          ),
          onPressed: () {},
          child: Text('Follow'),
        );
      case activityStatus.message:
        // ----------------- OutlinedButton Message
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: greyColor),
          ),
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
              color: greyColor,
              fontSize: 12,
              fontFamily: 'GB',
            ),
          ),
        );
      case activityStatus.lick:
        //  ------------ Image Right
        return SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset("images/item10.png"),
            ),
          ),
        );

      default:
        return Text('');
    }
  }

  Widget _getPage_You() {
    return Container(
      color: Colors.blue,
    );
  }
}
