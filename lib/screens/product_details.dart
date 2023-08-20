import 'package:flutter/material.dart';
import 'package:group_task/data_classes/product_data.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key,required this.productData});
  final ProductData productData;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 70),
            color: Colors.grey[200],
            width: size.width,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: size.width-100,
                    width: size.width-100,
                    child: Image.asset(
                      widget.productData.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                RichText(
                  text: TextSpan(
                    text: 'Product Name : ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),
                    children: [
                      TextSpan(
                        text: widget.productData.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ]
                  ),
                ),
                const SizedBox(height: 6),
                widget.productData.description != ''
                ? RichText(
                  text: TextSpan(
                    text: 'Description : ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),
                    children: [
                      TextSpan(
                        text: widget.productData.description,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ]
                  ),
                )
                : RichText(
                    text: const TextSpan(
                      text: 'Description of Product : ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                      ),
                      children: [
                        TextSpan(
                          text: 'None',
                          style: TextStyle(
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ]
                    ),
                ),
                const SizedBox(height: 6),
                RichText(
                  text: TextSpan(
                    text: 'Price of Product : ₹ ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),
                    children: [
                      TextSpan(
                        text: '${widget.productData.previousPrice}',
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey
                        ),
                      ),
                    ]
                  ),
                ),
                const SizedBox(height: 6),
                RichText(
                  text: TextSpan(
                    text: 'Selling Price : ₹ ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),
                    children: [
                      TextSpan(
                        text: '${widget.productData.newPrice}',
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ]
                  ),
                ),
                const SizedBox(height: 6),
                RichText(
                  text: TextSpan(
                    text: 'Stock : ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),
                    children: [
                      TextSpan(
                        text: '${widget.productData.stock}',
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ]
                  ),
                ),
                const SizedBox(height: 6),
                RichText(
                  text: TextSpan(
                    text: 'Type of Product : ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),
                    children: [
                      TextSpan(
                        text: widget.productData.type,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ]
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
