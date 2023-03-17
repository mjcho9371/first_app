import 'package:flutter/material.dart';

import 'package:mjcho_first_app/item.dart';
import 'package:mjcho_first_app/api.dart';
import 'package:mjcho_first_app/data.dart';
import 'package:mjcho_first_app/vertical_item.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  String keyword = '';
  String filter = '';
  List<ProductData> allItems = [];
  List<ProductData> items = [];

  void searchProduct([String keyword = '']) {
    getPublication(keyword).then((datas) {
      setState(() {
        allItems = [...datas.datas];
        items = allItems;
      });
    });
  }

  @override
  void initState() {
    searchProduct();
    super.initState();
  }

  void onFilter() {
    print('current filter: ' + filter);
    setState(() {
      items = allItems.where((element) => element.isMe(filter)).toList();
      print('current items.length: ${items.length}');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('itmes count ${items.length}');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.3,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                searchProduct(keyword);
              },
            ),
          ],
          title: TextField(
            textInputAction: TextInputAction.go,
            onChanged: (v) {
              keyword = v;
            },
            onSubmitted: (value) {
              keyword = value;
              searchProduct(keyword);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                onChanged: (v) {
                  filter = v;
                  onFilter();
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 40,
                bottom: 16,
              ),
              child: Text(
                '지금 인기 있는 상품들',
                maxLines: 1,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    print('item index ${index}');
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
