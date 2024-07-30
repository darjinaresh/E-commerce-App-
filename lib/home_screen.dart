import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'navigationbar.dart';
import 'categories.dart';
import 'wishlist.dart';
import 'package:naveli/wishlist.dart';
import 'drawer.dart';
import 'buildpagecontent.dart';
import 'explore.dart';
import 'login_signup.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late PageController _pageController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  void _onTap(int index) {
    if (index == 3) {
      Navigator.push(
        context,
        // MaterialPageRoute(builder: (context) => LoginPage()),
        MaterialPageRoute(builder: (context) => LoginSignupScreen()),

      );
    } else {
      setState(() {
        _currentIndex = index;
      });
      _pageController.jumpToPage(index);
    }
  }

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor:Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: _currentIndex != 2
      ? AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.grey[900],
          onPressed: () {
            // Scaffold.of(context).openDrawer();
            _scaffoldKey.currentState?.openDrawer();
          },
        ),

        title: Text('NAVELI',style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 22,
          color: Colors.grey[900]
        ),
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 20,
            color: Colors.grey[900],
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            iconSize: 20,
            color: Colors.grey[900],
            onPressed: () {
              // Handle notification action
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.grey[900],
            iconSize: 20,
            onPressed: () {
              // Handle cart action
            },
          ),
        ],
      )
      : null,

      drawer: CustomDrawer(),

      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          buildPageContent(),
          CategoriesPage(),
          WishlistPage(),
          ExplorePage(),
        ],
      ),
      bottomNavigationBar: ImageNavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}


