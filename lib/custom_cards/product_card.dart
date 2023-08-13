import 'package:flutter/material.dart';
import 'package:group_task/data_classes/product_data.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key,required this.productData});
  final ProductData productData;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/3,
      width: MediaQuery.of(context).size.width/2-40,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Image.asset(
                  widget.productData.image,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  widget.productData.name,
                  style: const TextStyle(
                    fontSize: 18
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Price ₹${widget.productData.previousPrice} ₹${widget.productData.newPrice}',
                  style: const TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              // const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Stock: ${widget.productData.stock}',
                  style: const TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              // const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Type: ${widget.productData.type}',
                  style: const TextStyle(
                      fontSize: 18
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
