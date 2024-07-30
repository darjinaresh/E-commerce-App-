import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'categories.dart';
import 'wishlist.dart';
import 'explore.dart';

class ImageNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  ImageNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context)  {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        onTap(index);
      },
      items: [
        // BottomNavigationBarItem(
        //   icon: Image.asset(
        //     'assets/images/home-button.png',
        //     height: 22,
        //     width: 24,
        //     color: currentIndex == 0 ? Colors.black : Colors.grey,
        //
        //   ),
        //   label: 'Home',
        // ),
        // BottomNavigationBarItem(
        //   icon: Image.asset(
        //     'assets/images/categories.png',
        //     height: 22,
        //     width: 24,
        //     color: currentIndex == 1 ? Colors.black : Colors.grey,
        //   ),
        //   label: 'Categories',
        // ),
        // BottomNavigationBarItem(
        //   icon: Image.asset(
        //     'assets/images/love.png',
        //     height: 22,
        //     width: 24,
        //     color: currentIndex == 2 ? Colors.black : Colors.grey,
        //   ),
        //   label: 'Wishlist',
        // ),
        // BottomNavigationBarItem(
        //   icon: Image.asset(
        //     'assets/images/user.png',
        //     height: 22,
        //     width: 24,
        //     color: currentIndex == 3 ? Colors.black : Colors.grey,
        //   ),
        //   label: 'User',
        // ),



        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'WishList',
        ),

        // BottomNavigationBarItem(
        //   icon: Icon(Icons.star),
        //   label: 'Explore',
        // ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),


      ],
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }
}
