import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mjcho_first_app/item.dart';
import 'package:mjcho_first_app/data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ProductDatas datas = ProductDatas();
    ProductData data0 = datas.datas[0];
    ProductData data1 = datas.datas[1];
    ProductData data2 = datas.datas[2];
    ProductData data3 = datas.datas[3];
    List<ProductData> items = [...datas.datas, ...datas.datas, ...datas.datas];
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 40,
                bottom: 16,
              ),
              child: Text(
                '민정의 마켓',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: (items.length / 2).floor(),
                  itemBuilder: (context, index) {
                    final data0 = items[index + index];
                    final data1 = items[index + index + 1];
                    return Row(children: [
                      Flexible(
                        flex: 2,
                        child: ProductItem(data0),
                      ),
                      Flexible(
                        flex: 2,
                        //2:2로
                        child: ProductItem(data1),
                      ),
                    ]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
