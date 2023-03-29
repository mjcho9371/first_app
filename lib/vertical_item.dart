import 'package:flutter/material.dart';
import 'package:mjcho_first_app/productdetail.dart';
import 'data.dart';

class ProductVerticalItem extends StatelessWidget {
  final ProductData data;
  const ProductVerticalItem(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    int discountRatio = 0;
    if (data.discountPrice > 0 && data.normalPrice > data.discountPrice) {
      discountRatio = (data.normalPrice / data.discountPrice).floor();
    }
    double height = 150;
    return GestureDetector(
      onTap: () {
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
          color: Colors.white,
          child: SizedBox(
            width: double.infinity,
            height: height,
            child: Row(
              children: [
                SizedBox(
                  width: height,
                  child: Image.network(
                    data.thumbnail,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        data.title,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          fontFamily: String.fromEnvironment("Pretendard"),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        data.description,
                        maxLines: 1,
                      ),
                      Row(
                        children: [
                          Text(
                            data.brandName,
                            maxLines: 1,
                          ),
                          Text(
                            data.sellerName,
                            maxLines: 1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            '$discountRatio%',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '${data.discountPrice}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
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
