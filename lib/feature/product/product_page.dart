import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'product_controller.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (controller) {
        return Scaffold(
            body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 24),
                child: Text(
                  "txt_home_attendance_status ".tr,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ));
      }
    );
  }
}
