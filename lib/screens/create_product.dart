import 'package:flutter/material.dart';
import 'package:group_task/button_widgets/button2.dart';
import 'package:group_task/inputfield_widgets/inputfield1.dart';
import 'package:group_task/screens/your_products.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({super.key});

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final sellingPriceController = TextEditingController();
  final stockController = TextEditingController();
  final typeController = TextEditingController();
  final categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  children: [
                    Text(
                      'Create Product',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    'assets/images/image1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 30),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      InputField1(controller: nameController, fieldName: 'Write the name of product',),
                      const SizedBox(height: 7),
                      InputField1(controller: descriptionController, fieldName: 'Write the description of product',),
                      const SizedBox(height: 7),
                      InputField1(controller: priceController, fieldName: 'Price of product',),
                      const SizedBox(height: 7),
                      InputField1(controller: sellingPriceController, fieldName: 'Selling Price'),
                      const SizedBox(height: 7),
                      InputField1(controller: stockController, fieldName: 'Stock',),
                      const SizedBox(height: 7),
                      InputField1(controller: typeController, fieldName: 'Types of Product',),
                      const SizedBox(height: 7),
                      InputField1(controller: categoryController, fieldName: 'Types of Categories',),
                      const SizedBox(height: 20),
                      Button2(
                        text: 'Save Product',
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const OwnProductsPage()));
                        },
                        color: Colors.red,
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
