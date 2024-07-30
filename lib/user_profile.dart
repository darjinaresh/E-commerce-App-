import 'package:flutter/material.dart';
import 'profile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          iconSize: 20,
          onPressed: () {},
        ),
        elevation: 0,
        title: Text('MY ACCOUNT',style:TextStyle(
          fontSize: 14,
        ),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Stack(
              children: <Widget>[
                Icon(Icons.shopping_cart),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            onPressed: () {
              // Handle cart action
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: [
            Row(
              children: [
                SizedBox(width: 10.0),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'assets/images/naresh.png', // Replace with your logo URL
                  ),
                ),
                SizedBox(width: 30.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NARESH DARJI',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 17),
                    Text(
                      '(Non Member)',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        // Handle membership action
                      },
                      child: Text(
                        'Get Exclusive Membership Now',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height:38),
            Divider(height: 0.0, color: Colors.teal, ),
            ProfileListTile(
              title: 'Profile',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen(),),);
              },
            ),

            ProfileListTile(
              title: 'My Orders',
              onTap: () {
                // Handle navigation
              },
            ),

            ProfileListTile(
              title: 'Address Book',
              onTap: () {
                // Handle navigation
              },
            ),

            ProfileListTile(
              title: 'Gift Voucher',
              onTap: () {
                // Handle navigation
              },
            ),

            ProfileListTile(
              title: 'TSS Points',
              // subtitle: 'Active TSS Points: 0',
              onTap: () {
                // Handle navigation
              },
            ),

            ProfileListTile(
              title: 'TSS Money',
              // subtitle: 'Available: ₹ 0',
              onTap: () {
                // Handle navigation
              },
            ),

            ProfileListTile(
              title: 'Delete My Account',
              onTap: () {
                // Handle navigation
              },
            ),

            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle logout
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                side: BorderSide(color: Colors.grey),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: Text('LOG OUT'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  ProfileListTile({
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14 , color: Colors.blueGrey[800]),
          ),
          subtitle: subtitle != null ? Text(subtitle!, style: TextStyle(color: Colors.teal, fontSize: 12)) : null,
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,size:17 ),
          onTap: onTap,
        ),
        Divider(height: 0.0),
      ],
    );
  }
}
