import 'package:flutter/material.dart';

class KidsCategoryPage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'title': 'Hoddies', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1715446628_2400659.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Jackets', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1713507594_1732022.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'T-Shirts', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1710915476_6505693.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Oversized T-Shirts', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1708152346_1266132.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Co-ord sets', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/Solids%20Emerald%20Green%20White%20Colourblock%20Set2024_04_09-11-29-16.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Shirt', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1713875058_8891887.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Joggers', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1712055557_5412316.jpg?format=webp&w=300&dpr=1.3'},
    {'title': 'Shorts', 'image': 'https://prod-img.thesouledstore.com/public/theSoul/uploads/catalog/product/1712641502_1472663.jpg?format=webp&w=300&dpr=1.3'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => DetailsPage(category: categories[index]),
            // ),
            // );
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
