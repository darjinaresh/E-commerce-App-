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




//
// import 'package:flutter/material.dart';
//
// class WishlistPage extends StatefulWidget {
//   @override
//   _WishlistPageState createState() => _WishlistPageState();
// }
//
// class _WishlistPageState extends State<WishlistPage> {
//   List<String> wishlistItems = [];
//
//   void addItem(String item) {
//     setState(() {
//       if (!wishlistItems.contains(item)) {
//         wishlistItems.add(item);
//       }
//     });
//   }
//
//   void removeItem(String item) {
//     setState(() {
//       wishlistItems.remove(item);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('wishlist'),
//       ),
//       body: ListView.builder(
//         itemCount: wishlistItems.length,
//         itemBuilder: (context, index) {
//           final item = wishlistItems[index];
//           return ListTile(
//             title: Text(item),
//             trailing: IconButton(
//               icon: Icon(Icons.delete),
//               onPressed: () => removeItem(item),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  List<String> wishlistItems = [];

  void addItem(String item) {
    setState(() {
      if (!wishlistItems.contains(item)) {
        wishlistItems.add(item);
      }
    });
  }

  void removeItem(String item) {
    setState(() {
      wishlistItems.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          iconSize: 20,
          onPressed: () {},
        ),
        title: Text('Wishlist', style: TextStyle(
          fontSize: 19,
          fontFamily: 'Roboto'
        ),),
        centerTitle: true,

        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            iconSize: 20,
            onPressed: () {

            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: wishlistItems.length,
        itemBuilder: (context, index) {
          final item = wishlistItems[index];
          return ListTile(
            title: Text(item),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => removeItem(item),
            ),
          );
        },
      ),
    );
  }
}


