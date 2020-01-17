import 'package:FlutterSample/widget/list_category.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  CategoryPageState createState() => CategoryPageState();
}

class CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  var _tabList = ["All", "Android", "iOS", "App", "前端", "拓展资源", "瞎推荐", "休息视频"];
  var _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: _tabList.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('分类'),
          ),
          bottom: TabBar(
            isScrollable: true,
            labelStyle:TextStyle(
              fontSize: 16,
            ) ,
            controller: _tabController,
            tabs: _tabList.map((itme) {
              return Tab(text: itme);
            }).toList(),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: _tabList.map((itme) {
            return MyListView(itme);
          }).toList(),
        ));
  }
}