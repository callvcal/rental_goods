import 'package:flutter/material.dart';
import '../custom_cards/product_card.dart';
import '../data_classes/product_data.dart';

class OwnProductsPage extends StatefulWidget {
  const OwnProductsPage({super.key});

  @override
  State<OwnProductsPage> createState() => _OwnProductsPageState();
}

class _OwnProductsPageState extends State<OwnProductsPage> {

  List<ProductData> data = [
    ProductData(name: 'Product 1', previousPrice: 50, newPrice: 40, stock: 1, type: 'New', image: 'assets/images/image1.png', availability: 'Available'),
    ProductData(name: 'Product 2', previousPrice: 60, newPrice: 50, stock: 2, type: 'Old', image: 'assets/images/image2.png', availability: 'Not Available'),
    ProductData(name: 'Product 3', previousPrice: 70, newPrice: 60, stock: 3, type: 'New', image: 'assets/images/image3.png', availability: 'Available'),
    ProductData(name: 'Product 4', previousPrice: 80, newPrice: 70, stock: 4, type: 'Old', image: 'assets/images/image3.png', availability: 'Not Available'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Products',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)
                      ),
                      backgroundColor: const Color(0xffd9d9d9),
                    ),
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>const OwnProductsPage()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Add',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 20
                          ),
                        ),
                      )
                    ),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 7
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
