import 'package:flutter/material.dart';

import '../cartscreen/cart.dart';
import '../homescreen/home.dart';

class ProductPage extends StatefulWidget {
  late final Product product;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String selectedVolume = '100 ml';
  bool isFavorite = false;

  final productData = {
    '100 ml': {
      'image': 'assets/img_10.png',
      'price': '120rs',
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown"
    },
    '200 ml': {
      'image': 'assets/img_9.png',
      'price': '200rs',
      'description':
          "printer took a galley of type and scrambled it to make a type specimen book. "
              "It has survived not only five centuries, but also the leap into electronic typesetting",
    },
  };

  final List<String> availableVolumes = ['100 ml', '200 ml'];

  void selectVolume(String volume) {
    setState(() {
      selectedVolume = volume;
    });
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentData = productData[selectedVolume]!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bashpika Tulasi",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Image.asset(
                  currentData['image']!,
                  width: 335,
                  height: 289,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: availableVolumes.map((volume) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 8.0),
                        child: GestureDetector(
                          onTap: () => selectVolume(volume),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 4), // Smaller padding
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.1,
                              ),
                              color: selectedVolume == volume
                                  ? Color(0xff6EBC31)
                                  : Color(0xff6EBC31).withOpacity(0.39),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              volume,
                              style: TextStyle(
                                fontSize: 12, // Smaller font size
                                fontWeight: FontWeight.w400,
                                color: selectedVolume == volume
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      currentData['price']!,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                currentData['description']!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff6EBC31).withOpacity(0.79),
                  ),
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
