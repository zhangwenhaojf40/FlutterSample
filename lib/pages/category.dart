import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {


  @override
  CategoryPageState createState() => CategoryPageState();


}

class CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  var _tabList = ["all", "Android", "iOS", "App", "前端", "拓展资源", "瞎推荐", "休息视频"];
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
        )
    );
  }

}

class MyListView extends StatefulWidget {
  MyListView(this.category);
  String  category;
  @override
  MyListViewState createState() => MyListViewState();

}

class MyListViewState extends State<MyListView> {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Container(
          height: 1,
          color: Colors.grey.shade100,
        );
      },
      itemCount: 30,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${index}${widget.category}'),
        );
      },
    );
  }

}