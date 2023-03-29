import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mjcho_first_app/data.dart';
import 'package:mjcho_first_app/item.dart';

class ProductDetail extends StatefulWidget {
  final ProductData data;
  const ProductDetail({required this.data, super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.3,
          title: Text(
            widget.data.title,
            style: TextStyle(
              fontSize: 15,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.network(
                widget.data.thumbnail,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.data.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 21,
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.data.description,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.data.code,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('주문하기눌렀음');
              },
              child: Text('주문하기'),
              style: const ButtonStyle(
                backgroundColor: Colors.brown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
