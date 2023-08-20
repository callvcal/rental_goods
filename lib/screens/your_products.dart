import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:group_task/button_widgets/button1.dart';
import 'package:group_task/screens/create_product.dart';
import 'package:group_task/screens/edit_product.dart';
import '../custom_cards/product_card.dart';
import '../data_classes/product_data.dart';

class OwnProductsPage extends StatefulWidget {
  const OwnProductsPage({super.key});

  @override
  State<OwnProductsPage> createState() => _OwnProductsPageState();
}

class _OwnProductsPageState extends State<OwnProductsPage> {

  List<ProductData> data = [
    ProductData(name: 'Product 1', previousPrice: 40, newPrice: 30, stock: 1, type: 'New', image: 'assets/images/image1.png', availability: 'Available', description: ''),
    ProductData(name: 'Product 2', previousPrice: 50, newPrice: 40, stock: 2, type: 'Old', image: 'assets/images/image2.png', availability: 'Not Available', description: ''),
    ProductData(name: 'Product 3', previousPrice: 80, newPrice: 70, stock: 5, type: 'New', image: 'assets/images/image3.png', availability: 'Available', description: ''),
    ProductData(name: 'Product 4', previousPrice: 90, newPrice: 80, stock: 6, type: 'Old', image: 'assets/images/image3.png', availability: 'Not Available', description: ''),
  ];

  bool isProductCardCall = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Your Product',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateProduct()));
                },
                text: 'Add',
              )
            )
          ],
        ),
        body: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProduct(productData: data[index])));
              },
              child: ProductCard(
                productData: data[index],
                isProductCardCalled: true,
              ),
            );
          },
          staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
