import 'package:flutter/material.dart';
import 'package:flutter_sample/widget/list_home.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('首页'),
        ),
      ),
      body: ListHome(),
    );
  }


}

