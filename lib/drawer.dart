import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    setState(() {
      // Handle tab selection if needed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 320, // Adjust the width to control the drawer's size
      child: Builder(
        builder: (context) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark.copyWith(
              statusBarColor: Colors.transparent, // Set status bar color to white
            ),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      'NARESH DARJI',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    accountEmail: Text(
                      'nareshdarji2304@gmail.com',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),

                    currentAccountPicture: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black,
                      child: Image.asset('assets/images/logo6.png'),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                    arrowColor: Colors.grey, // Change the arrow color to grey
                  ),
                  Container(
                    height: 35,
                    margin: EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[200], // Background color of the circular tab bar
                      borderRadius: BorderRadius.circular(11), // Circular border radius
                    ),
                    child: TabBar(
                      controller: _tabController,
                      indicator: BoxDecoration(color: Colors.white),
                      tabs: [
                        Tab(
                          child: Text(
                            'MEN',
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'WOMEN',
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'KIDS',
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        // Content for Men
                        buildMenTabContent(),
                        // Content for Women
                        buildWomenTabContent(),
                        // Content for Kids
                        buildKidsTabContent(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }


  Widget buildMenTabContent() {
    return ListView(
      children: <Widget>[
        buildExpansionTile('Topwear', <Widget>[
          ListTile(title: Text('Men\'s T-Shirts')),
          ListTile(title: Text('Men\'s Shirts')),
        ]),
        buildExpansionTile('Bottomwear', <Widget>[
          ListTile(title: Text('Men\'s Jeans')),
          ListTile(title: Text('Men\'s Shorts')),
        ]),
        buildExpansionTile('Bestsellers', <Widget>[
          ListTile(title: Text('Popular Item 1')),
          ListTile(title: Text('Popular Item 2')),
        ], textColor: Colors.red),
        buildExpansionTile('Accessories', <Widget>[
          ListTile(title: Text('Men\'s Bags')),
          ListTile(title: Text('Men\'s Watches')),
        ]),
        ListTile(
          title: Text('Men\'s Sneakers', style: TextStyle(
            fontSize: 13
          ),),
        ),
        buildExpansionTile('Collections', <Widget>[
          ListTile(title: Text('Men\'s Summer Collection')),
          ListTile(title: Text('Men\'s Winter Collection')),
        ]),
        Divider(color: Colors.grey[100],),
        ListTile(
          title: Text(
            'Get Discounts With Membership',
            style: TextStyle(color: Colors.red),
          ),
        ),
        ListTile(
          title: Text('My Account', style: TextStyle(
              fontSize: 13
          ),),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('My Orders', style: TextStyle(
              fontSize: 13
          ),),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Contact Us', style: TextStyle(
              fontSize: 13
          ),),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(color: Colors.grey[100],),
        ExpansionTile(
          title: Text('More', style: TextStyle(
            fontSize: 13
          ),),

          children: <Widget>[
            Divider(color: Colors.grey[100],),
            ListTile(title: Text(' 1')),
            ListTile(title: Text('2')),
          ],
        ),
      ],
    );
  }

  Widget buildWomenTabContent() {
    return ListView(
      children: <Widget>[
        buildExpansionTile('Topwear', <Widget>[
          ListTile(title: Text('Women\'s Dresses')),
          ListTile(title: Text('Women\'s Tops')),
        ]),
        buildExpansionTile('Bottomwear', <Widget>[
          ListTile(title: Text('Women\'s Jeans')),
          ListTile(title: Text('Women\'s Skirts')),
        ]),
        buildExpansionTile('Bestsellers', <Widget>[
          ListTile(title: Text('Popular Item 1')),
          ListTile(title: Text('Popular Item 2')),
        ], textColor: Colors.red),
        buildExpansionTile('Accessories', <Widget>[
          ListTile(title: Text('Women\'s Bags')),
          ListTile(title: Text('Women\'s Watches')),
        ]),

        buildExpansionTile('Collections', <Widget>[
          ListTile(title: Text('Women\'s Summer Collection')),
          ListTile(title: Text('Women\'s Winter Collection')),
        ]),
        Divider(color: Colors.grey[100],),
        ListTile(
          title: Text(
            'Get Discounts With Membership',
            style: TextStyle(color: Colors.red, fontSize: 13),
          ),
        ),
        ListTile(
          title: Text('My Account', style: TextStyle(
            fontSize: 13
          ),),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('My Orders', style: TextStyle(
              fontSize: 13
          ),),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Contact Us', style: TextStyle(
              fontSize: 13
          ),),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(color: Colors.grey[100],),
        ExpansionTile(
          title: Text('More', style: TextStyle(
              fontSize: 13
          ),),
          children: <Widget>[
            ListTile(title: Text('More Item 1')),
            ListTile(title: Text('More Item 2')),
          ],
        ),
      ],
    );
  }

  Widget buildKidsTabContent() {
    return ListView(
      children: <Widget>[
        buildExpansionTile('Boys', <Widget>[
          ListTile(title: Text('Kids\' T-Shirts')),
          ListTile(title: Text('Kids\' Shirts')),
        ]),
        buildExpansionTile('Girls', <Widget>[
          ListTile(title: Text('Kids\' Jeans')),
          ListTile(title: Text('Kids\' Shorts')),
        ]),
        Divider(color: Colors.grey[100],),
        ListTile(
          title: Text(
            'Get Discounts With Membership',
            style: TextStyle(color: Colors.red),
          ),
        ),
        ListTile(
          title: Text('My Account', style: TextStyle(
              fontSize: 13
          ),),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('My Orders', style: TextStyle(
              fontSize: 13
          ),),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Contact Us', style: TextStyle(
              fontSize: 13
          ),),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(color: Colors.grey[100],),
        ExpansionTile(
          title: Text('More', style: TextStyle(
              fontSize: 13
          ),),
          children: <Widget>[
            ListTile(title: Text('More Item 1')),
            ListTile(title: Text('More Item 2')),
          ],
        ),
      ],
    );
  }

  Widget buildExpansionTile(String title, List<Widget> children, {Color? textColor}) {
    // Define a TextStyle for the ExpansionTile title
    TextStyle titleTextStyle = TextStyle(
      color: textColor ?? Colors.grey[700],
      fontSize: 13,fontWeight: FontWeight.normal
      // You can add more styling properties here as needed
    );

    return ExpansionTile(
      title: Text(
        title,
        style: titleTextStyle,
      ),
      children: children,
    );
  }
}
