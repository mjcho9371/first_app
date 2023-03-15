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
  String keyword = '';
  List<ProductData> allItems = [];
  List<ProductData> items = [];
  @override
  void initState() {
    ProductDatas datas = ProductDatas();
    ProductData data0 = datas.datas[0];
    ProductData data1 = datas.datas[1];
    ProductData data2 = datas.datas[2];
    ProductData data3 = datas.datas[3];
    allItems = [...datas.datas, ...datas.datas, ...datas.datas, ...datas.datas];
    items = allItems;
    super.initState();
  }

  void onPressed() {
    print('current keyword: ' + keyword);
    setState(() {
      items =
          allItems.where((element) => element.title.contains(keyword)).toList();
      print('current items.length: ${items.length}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.3,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: onPressed,
            ),
          ],
          title: TextField(
            onChanged: (v) {
              keyword = v;
              print('onChanged: ' + keyword);
            },
          ),
        ),
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
                '지금 인기 있는 상품들',
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
