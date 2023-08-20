import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:group_task/button_widgets/button1.dart';
import 'package:group_task/custom_cards/product_card.dart';
import 'package:group_task/screens/your_products.dart';
import '../data_classes/product_data.dart';

class ProductDashboard extends StatefulWidget {
  const ProductDashboard({super.key});

  @override
  State<ProductDashboard> createState() => _ProductDashboardState();
}

class _ProductDashboardState extends State<ProductDashboard> {

  List<ProductData> data = [
    ProductData(name: 'Product 1', previousPrice: 50, newPrice: 40, stock: 1, type: 'New', image: 'assets/images/image1.png', availability: 'Available', description: ''),
    ProductData(name: 'Product 2', previousPrice: 60, newPrice: 50, stock: 2, type: 'Old', image: 'assets/images/image2.png', availability: 'Not Available', description: ''),
    ProductData(name: 'Product 3', previousPrice: 70, newPrice: 60, stock: 3, type: 'New', image: 'assets/images/image3.png', availability: 'Available', description: ''),
    ProductData(name: 'Product 4', previousPrice: 80, newPrice: 70, stock: 4, type: 'Old', image: 'assets/images/image3.png', availability: 'Not Available', description: ''),
    ProductData(name: 'Product 5', previousPrice: 80, newPrice: 70, stock: 4, type: 'Old', image: 'assets/images/image3.png', availability: 'Not Available', description: ''),
    ProductData(name: 'Product 6', previousPrice: 80, newPrice: 70, stock: 4, type: 'Old', image: 'assets/images/image3.png', availability: 'Not Available', description: ''),
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
            child: Button1(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const OwnProductsPage()));
              },
              text: 'Sell',
            )
          )
        ],
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(
            productData: data[index],
            isProductCardCalled: false,
          );
        },
        staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 8.0,
      ),
    );
  }
}
