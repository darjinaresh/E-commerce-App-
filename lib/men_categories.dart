import 'package:flutter/material.dart';
import 'mencategories/hoodies.dart';
import 'mencategories/jackets.dart';
import 'mencategories/tshirts.dart';
import 'mencategories/oversizedtshirts.dart';
import 'mencategories/coordsets.dart';
import 'mencategories/shirts.dart';
import 'mencategories/joggers.dart';
import 'mencategories/shorts.dart';

class MenCategoryPage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'title': 'Hoddies', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1661234644_5155250.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Jackets', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1706602531_2852851.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'T-Shirts', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1710915476_6505693.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Oversized T-Shirts', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1715448110_1443849.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Co-ord sets', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/Harry%20Potter%20Gryffindor%20Set%20(2)2024_04_09-11-27-12.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Shirt', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1708149832_4732925.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Joggers', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1716362229_3536910.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Shorts', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1704261203_1467099.jpg?format=webp&w=300&dpr=1.3'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
           String categorytitle = categories[index]['title']!;
           switch(categorytitle) {
             case 'Hoddies':
               Navigator.push(context, MaterialPageRoute(builder: (context) => HoodiesPage()));
               break;

             case 'Jackets':
               Navigator.push(context, MaterialPageRoute(builder: (context) => JacketsPage()));
               break;

             case 'T-Shirts':
               Navigator.push(context, MaterialPageRoute(builder: (context) => TShirtPage()));
               break;

             case 'Oversized T-Shirts':
               Navigator.push(context, MaterialPageRoute(builder: (context) => OversizedTShirtsPage()));
               break;

             case 'Co-ord sets':
               Navigator.push(context, MaterialPageRoute(builder: (context) => CoordSetsPage()));
               break;

             case 'Shirt':
               Navigator.push(context, MaterialPageRoute(builder: (context) => ShirtPage()));
               break;

             case 'Joggers':
               Navigator.push(context, MaterialPageRoute(builder: (context) => JoggersPage()));
               break;

             case 'Shorts':
               Navigator.push(context, MaterialPageRoute(builder: (context) => ShortsPage()));
               break;
           }
          },
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(categories[index]['image']!),
              ),
              SizedBox(height: 8),
              Text(categories[index]['title']!),
            ],
          ),
        );
      },
    );
  }
}
