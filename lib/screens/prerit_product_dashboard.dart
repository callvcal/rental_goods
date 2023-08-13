import 'package:flutter/material.dart';
import 'package:group_task/custom_cards/product_card.dart';
import 'package:group_task/screens/prerit_your_products.dart';
import '../data_classes/product_data.dart';

class ProductDashboard extends StatefulWidget {
  const ProductDashboard({super.key});

  @override
  State<ProductDashboard> createState() => _ProductDashboardState();
}

class _ProductDashboardState extends State<ProductDashboard> {

  List<ProductData> data = [
    ProductData(name: 'Product 1', previousPrice: 50, newPrice: 40, stock: 1, type: 'New', image: 'assets/images/image1.png', availability: 'Available'),
    ProductData(name: 'Product 2', previousPrice: 60, newPrice: 50, stock: 2, type: 'Old', image: 'assets/images/image2.png', availability: 'Not Available'),
    ProductData(name: 'Product 3', previousPrice: 70, newPrice: 60, stock: 3, type: 'New', image: 'assets/images/image3.png', availability: 'Available'),
    ProductData(name: 'Product 4', previousPrice: 80, newPrice: 70, stock: 4, type: 'Old', image: 'assets/images/image3.png', availability: 'Not Available'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'College Name',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)
                ),
                backgroundColor: const Color(0xffd9d9d9),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const OwnProductsPage()));
              },
              child: const Text(
                'Sell',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20
                ),
              )
            ),
          )
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 1,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          childAspectRatio: 1,
        ),
        itemCount: data.length,
        itemBuilder: (context,index) {
          return InkWell(
            onTap: () {
              debugPrint((index+1).toString());
            },
            child: ProductCard(productData: data[index])
          );
        },
      ),
    );
  }
}
