import 'package:flutter/material.dart';
import 'package:naveli/wishlist.dart';

class HoodiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          iconSize: 20,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Hoodies',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            iconSize: 20,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WishlistPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            iconSize: 20,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8), // Add padding to all sides
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: HoodieItem(
                    imageUrl:
                    'https://images.bewakoof.com/t640/men-s-brown-death-eater-graphic-printed-hoodies-629680-1717578728-1.jpg',
                    name: 'Hoodie 1',
                    description: 'Description of Hoodie 1',
                    price: 999, // Price in Indian Rupees
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: HoodieItem(
                    imageUrl:
                    'https://images.bewakoof.com/t640/men-s-black-death-eater-graphic-printed-hoodies-629677-1715159915-1.jpg',
                    name: 'Hoodie 2',
                    description: 'Description of Hoodie 2',
                    price: 1299, // Price in Indian Rupees
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: HoodieItem(
                    imageUrl:
                    'https://images.bewakoof.com/t640/men-s-blue-seeker-graphic-printed-sweatshirt-629670-1716287995-1.jpg',
                    name: 'Hoodie 3',
                    description: 'Description of Hoodie 3',
                    price: 899, // Price in Indian Rupees
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: HoodieItem(
                    imageUrl:
                    'https://images.bewakoof.com/t640/men-s-black-mickey-s-kingdom-graphic-printed-sweatshirt-628897-1716287754-1.jpg',
                    name: 'Hoodie 4',
                    description: 'Description of Hoodie 4',
                    price: 1499, // Price in Indian Rupees
                  ),
                ),
              ],
            ),
            // Add more rows of HoodieItems here
          ],
        ),
      ),
    );
  }
}

class HoodieItem extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String description;
  final int price; // Price in Indian Rupees

  const HoodieItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  _HoodieItemState createState() => _HoodieItemState();
}

class _HoodieItemState extends State<HoodieItem> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Card(
              child: Container(
                width: double.infinity,
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.zero,
                  image: DecorationImage(
                    image: NetworkImage(widget.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 2,
              top: 5,
              child: IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          widget.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 4),
        Text(
          widget.description,
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 4),
        Text(
          '₹${widget.price}', // Display price in Indian Rupees
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}





