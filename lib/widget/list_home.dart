import 'package:flutter/material.dart';

import 'item/item_home.dart';
class ListHome extends StatelessWidget{

  var list = List();
  List<String >  images = [
    "https://hbimg.huabanimg.com/fa7be73547c402acc9c7a1e8717cba4d87a487c51adaa-4aL4RO_fw658",
    "https://hbimg.huabanimg.com/621034b37c53ffc81f5d6a23ae1226d5c67e2b9628267-BYuZLo_fw658",
    "https://hbimg.huabanimg.com/78357472c41451bb06ddf8e1bf63f4fe38d054a32b5e4-IuY8EO_fw658",
    "https://hbimg.huabanimg.com/4ef3886fd17a74c9ae5c60ffffed13a62b49c7a33acdf-flB6An_fw658",
    "https://hbimg.huabanimg.com/a9d10755cdf6fef52d529a807810c937dd4c70552bb46-sAwWOc_fw658"
  ];

  @override
  Widget build(BuildContext context) {
    initData();
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child:ListView.separated(
        itemCount:list.length,
        separatorBuilder: (context,index){
          return Container(
            height: 1,
            color: Colors.grey.shade100,
          );
        },
        itemBuilder: (context,index){
          return ItemHome(index,images);
        },
      ),
    );
  }
  Future<void> _onRefresh() async {
    print("_onRefresh");
  }
  void initData() {
    for(int i=0;i<30;i++){
      list.add("$i");
    }
  }
}