import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mjcho_first_app/productdetail.dart';
import 'data.dart';

class ProductItem extends StatelessWidget {
  final ProductData data;
  const ProductItem(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(data.title);
        final nav = Navigator.of(
          context,
        );
        nav.push(MaterialPageRoute(builder: (context) {
          return ProductDetail(
            data: data,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Color.fromARGB(255, 238, 238, 238),
          child: SizedBox(
            width: double.infinity,
            height: 300,
            child: Column(
              children: [
                Image.network(
                  data.thumbnail,
                ),
                Text(
                  data.title,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 16),
                Text(
                  data.description,
                  maxLines: 2,
                ),
                Text(data.code),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
