import 'package:flutter/material.dart';
import 'package:group_task/data_classes/product_data.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key,required this.productData,required this.isProductCardCalled});
  final ProductData productData;
  final bool isProductCardCalled;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/3-20,
      width: MediaQuery.of(context).size.width/2-10,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Price: ₹',
                    style: const TextStyle(
                      color: Colors.black
                    ),
                    children: [
                      TextSpan(
                        text: '${widget.productData.previousPrice}',
                        style: const TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough
                        ),
                      ),
                      TextSpan(
                        text: ' ₹${widget.productData.newPrice},',
                        style: const TextStyle(
                            color: Colors.black
                        ),
                      )
                    ]
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Stock: ${widget.productData.stock}',
                  style: const TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              const SizedBox(height: 2),
              widget.isProductCardCalled
                  ? Container()
                  : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Type: ${widget.productData.type}',
                      style: const TextStyle(
                          fontSize: 18
                      ),
                    ),
                  ),
                  widget.isProductCardCalled
                  ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'In Review:',
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                        Text(
                          widget.productData.availability,
                          style: TextStyle(
                            color: widget.productData.availability == 'Available'?Colors.green:Colors.red,
                            fontSize: 18
                          ),

                        )
                      ],
                    ),
                  )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
