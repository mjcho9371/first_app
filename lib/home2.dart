import 'package:flutter/material.dart';

import 'package:mjcho_first_app/item.dart';
import 'package:mjcho_first_app/data.dart';
import 'package:mjcho_first_app/vertical_item.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  String keyword = '';
  List<ProductData> allItems = [];
  List<ProductData> items = [];
  @override
  void initState() {
    ProductDatas datas = ProductDatas();

    allItems = [...datas.datas];
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
              icon: const Icon(Icons.search),
              onPressed: onPressed,
            ),
          ],
          title: TextField(
            onChanged: (v) {
              keyword = v;
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
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
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final data = items[index];
                    return ProductVerticalItem(data);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
