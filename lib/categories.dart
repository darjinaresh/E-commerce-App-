// import 'package:flutter/material.dart';
//
// class CategoriesPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3, // Number of tabs
//       child: Scaffold(
//         // appBar: AppBar(
//         //   backgroundColor: Colors.white,
//         //   automaticallyImplyLeading: false,// AppBar title color
//         // ),
//         body: Container(
//           color: Colors.white,
//           child: Column(
//             children: [
//               SizedBox(
//                   height: 20,
//               ),
//               PreferredSize(
//                 preferredSize: Size.fromHeight(1),
//                 child: Container(
//                   color: Colors.white,
//                   child: TabBar(
//                     tabs: [
//                       Tab(text: 'MEN'),
//                       Tab(text: 'WOMEN'),
//                       Tab(text: 'KIDS')
//                     ],
//                     labelColor: Colors.black,
//                     unselectedLabelColor: Colors.grey,
//                     indicatorColor: Colors.blue,
//                     labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     unselectedLabelStyle: TextStyle(fontSize: 14),
//                   ),
//                 ),
//               ),
//               // Expanded(child: TabBarView(
//               //   children: [
//               //     MenCategoryContent(),
//               //     WomenCategoryContent(),
//               //     KidsCategoryContent(),
//               //
//               //   ],
//               // ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // here i make as per my taste..
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// // this content made by me same from tss original
//
// //
// // class MenCategoryContent extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       children: [
// //         Container(
// //           decoration: BoxDecoration(
// //             color: Colors.grey[100],
// //
// //           ),
// //           width: 168,
// //           child: ListView(
// //             children: [
// //               ListTile(title: Text('New Arrivals', style: TextStyle(
// //                 fontSize:13
// //               ),)),
// //               ListTile(title: Text('Supima Collection', style: TextStyle(
// //                 fontSize: 13
// //               ),)),
// //               ListTile(title: Text('Topwear', style: TextStyle(
// //                 fontSize: 13
// //               ),)),
// //               ListTile(title: Text('Bottomwear', style: TextStyle(
// //                 fontSize: 13
// //               ),)),
// //               ListTile(title: Text('Sneakers', style: TextStyle(
// //                 fontSize: 13
// //               ),)),
// //               ListTile(title: Text('Accessories', style: TextStyle(
// //                 fontSize: 13,
// //               ),)),
// //               ListTile(title: Text('Collections', style: TextStyle(
// //                 fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('Themes', style: TextStyle(
// //                 fontSize: 13
// //               ),)),
// //               ListTile(title: Text('Get Discounts With Membership', style: TextStyle(color: Colors.red, fontSize: 14))),
// //               ListTile(title: Text('My Account', style: TextStyle(
// //                 fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('My Orders', style: TextStyle(
// //                 fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('Contact Us', style: TextStyle(
// //                 fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('FAQs', style: TextStyle(
// //                 fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //             ],
// //           ),
// //         ),
// //
// //         Expanded(
// //           child: GridView.count(
// //             crossAxisCount: 2,
// //             crossAxisSpacing: 0,
// //             children: [
// //               CategoryItem('Hoodies', 'assets/images/logo4.png'),
// //               CategoryItem('Jackets', 'assets/images/logo4.png'),
// //               CategoryItem('T-shirts', 'assets/images/logo4.png'),
// //               CategoryItem('Oversized T-shirts', 'assets/images/logo4.png'),
// //               CategoryItem('Shirts', 'assets/images/logo4.png'),
// //               CategoryItem('Co-ord sets', 'assets/images/logo4.png'),
// //               CategoryItem('Joggers', 'assets/images/logo4.png'),
// //               CategoryItem('Shorts', 'assets/images/logo4.png'),
// //             ],
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
// //
// //
// // class WomenCategoryContent extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       children: [
// //         Container(
// //           decoration: BoxDecoration(
// //             color: Colors.grey[100],
// //
// //           ),
// //           width: 168,
// //           child: ListView(
// //             children: [
// //               ListTile(title: Text('Restocked', style: TextStyle(
// //                   fontSize:13
// //               ),)),
// //               ListTile(title: Text('Topwear', style: TextStyle(
// //                   fontSize: 13
// //               ),)),
// //               ListTile(title: Text('Summer 24', style: TextStyle(
// //                   fontSize: 13
// //               ),)),
// //               ListTile(title: Text('Bottomwear', style: TextStyle(
// //                   fontSize: 13
// //               ),)),
// //               ListTile(title: Text('Shoes & Accessories', style: TextStyle(
// //                   fontSize: 13
// //               ),)),
// //               ListTile(title: Text('New Arrivals', style: TextStyle(
// //                 fontSize: 13,
// //               ),)),
// //               ListTile(title: Text('Themes', style: TextStyle(
// //                   fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('Get Discounts With Membership', style: TextStyle(
// //                   fontSize: 13
// //               ),)),
// //               ListTile(title: Text('My Account', style: TextStyle(
// //                   fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('My Orders', style: TextStyle(
// //                   fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('Contact Us', style: TextStyle(
// //                   fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('FAQs', style: TextStyle(
// //                   fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //             ],
// //           ),
// //         ),
// //
// //         Expanded(
// //           child: GridView.count(
// //             crossAxisCount: 2,
// //             crossAxisSpacing: 0,
// //             children: [
// //               CategoryItem('Hoodies', 'assets/images/logo4.png'),
// //               CategoryItem('Jackets', 'assets/images/logo4.png'),
// //               CategoryItem('T-shirts', 'assets/images/logo4.png'),
// //               CategoryItem('Oversized T-shirts', 'assets/images/logo4.png'),
// //               CategoryItem('Shirts', 'assets/images/logo4.png'),
// //               CategoryItem('Co-ord sets', 'assets/images/logo4.png'),
// //               CategoryItem('Joggers', 'assets/images/logo4.png'),
// //               CategoryItem('Shorts', 'assets/images/logo4.png'),
// //             ],
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
// //
// //
// // class KidsCategoryContent extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Row(
// //       children: [
// //         Container(
// //           decoration: BoxDecoration(
// //             color: Colors.grey[100],
// //
// //           ),
// //           width: 168,
// //           child: ListView(
// //             children: [
// //               ListTile(title: Text('Boys', style: TextStyle(
// //                   fontSize:13
// //               ),)),
// //               ListTile(title: Text('Girls', style: TextStyle(
// //                   fontSize: 13
// //               ),)),
// //               ListTile(title: Text('Themes', style: TextStyle(
// //                   fontSize: 13
// //               ),)),
// //               ListTile(title: Text('Get Discounts With Membership', style: TextStyle(color: Colors.red, fontSize: 14))),
// //               ListTile(title: Text('My Account', style: TextStyle(
// //                   fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('My Orders', style: TextStyle(
// //                   fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('Contact Us', style: TextStyle(
// //                   fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //               ListTile(title: Text('FAQs', style: TextStyle(
// //                   fontSize: 13, fontWeight: FontWeight.normal
// //               ),)),
// //             ],
// //           ),
// //         ),
// //
// //         Expanded(
// //           child: GridView.count(
// //             crossAxisCount: 2,
// //             crossAxisSpacing: 0,
// //             children: [
// //               CategoryItem('Hoodies', 'assets/images/logo4.png'),
// //               CategoryItem('Jackets', 'assets/images/logo4.png'),
// //               CategoryItem('T-shirts', 'assets/images/logo4.png'),
// //               CategoryItem('Oversized T-shirts', 'assets/images/logo4.png'),
// //               CategoryItem('Shirts', 'assets/images/logo4.png'),
// //               CategoryItem('Co-ord sets', 'assets/images/logo4.png'),
// //               CategoryItem('Joggers', 'assets/images/logo4.png'),
// //               CategoryItem('Shorts', 'assets/images/logo4.png'),
// //             ],
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
// //
// //
// //
// // // Similar classes for WomenCategoryContent and KidsCategoryContent
// //
// // class CategoryItem extends StatelessWidget {
// //   final String name;
// //   final String imagePath;
// //
// //   CategoryItem(this.name, this.imagePath);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Image.asset(imagePath, width: 60, height: 60),
// //           SizedBox(height: 10),
// //           Text(name, style: TextStyle(
// //             fontSize: 11
// //           ),),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // void main() {
// //   runApp(MaterialApp(
// //     home: CategoriesPage(),
// //   ));
// // }
//
//


// this code is categories without and list

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'men_categories.dart';
import 'women_categories.dart';
import 'kids_categories.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 11),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Background color of the circular tab bar
              borderRadius: BorderRadius.circular(11), // Circular border radius
            ),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(color: Colors.white,),
              tabs: [
                Tab(child: Text(
                  'MEN',
                  style: TextStyle(color: Colors.black),
                ),),
                Tab(child: Text(
                  'WOMEN',
                  style: TextStyle(color: Colors.black),
                ),),
                Tab(child: Text(
                  'KIDS',
                  style: TextStyle(color: Colors.black),
                ),),
              ],
            ),
          ),
          SizedBox(height: 11,),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                MenCategoryPage(),
                WomenCategoryPage(),
                KidsCategoryPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


