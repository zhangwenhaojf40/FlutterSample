import 'package:flutter/material.dart';
import 'package:flutter_sample/pages/category.dart';
import 'package:flutter_sample/pages/home.dart';
import 'package:flutter_sample/pages/me.dart';
import 'package:flutter_sample/pages/meizi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Sample1",
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MainPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
    BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('分类')),
    BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的')),
  ];
  var _pageControl = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) {
          return _pageByIndex(index);
        },
        itemCount: _items.length,
        onPageChanged: _onPageChange, //页面切换
        controller: _pageControl,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onClickFloat,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }

  Widget _pageByIndex(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return CategoryPage();
      case 2:
        return MePage();

    }
  }

  void _onPageChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTap(index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_pageControl.hasClients) {
      _pageControl.jumpToPage(_selectedIndex);
    }
  }

  void _onClickFloat() {
    setState(() {
      if (_selectedIndex >= _items.length-1) {
        _selectedIndex--;
      } else {
        _selectedIndex++;
      }
    });
    _pageControl.jumpToPage(_selectedIndex);
  }
}
