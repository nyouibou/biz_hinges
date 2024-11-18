import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'productdetail.dart';

class HealthDetail extends StatelessWidget {
  final List<Productdet> products = [
    Productdet(
        name: "Bashpika Tulasi",
        volume: "7ml",
        price: "77rs",
        imageUrl: "assets/img_6.png"),
    Productdet(
        name: "Bashpika Tulasi",
        volume: "10ml",
        price: "120rs",
        imageUrl: "assets/img_6.png"),
    Productdet(
        name: "Bashpika Tulasi",
        volume: "10ml",
        price: "120rs",
        imageUrl: "assets/img_6.png"),
    Productdet(
        name: "Sukh Bodycare Oil",
        volume: "100ml",
        price: "50rs",
        imageUrl: "assets/img_8.png"),
    Productdet(
        name: "Sukh Bodycare Oil",
        volume: "100ml",
        price: "120rs",
        imageUrl: "assets/img_8.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Category Name",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Productdet product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductPage()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 60,
                      height: 60,
                      color: Colors.grey.withOpacity(0.1),
                      child: Image.asset(
                        product.imageUrl,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        product.volume,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  product.price,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Productdet {
  final String name;
  final String volume;
  final String price;
  final String imageUrl;

  Productdet({
    required this.name,
    required this.volume,
    required this.price,
    required this.imageUrl,
  });
}
