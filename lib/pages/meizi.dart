import 'package:flutter/material.dart';
class MeiziPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MeiziPageState();
  }

}
class MeiziPageState extends State<MeiziPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('妹子'),
        ),
      ),
      body: Text('妹子'),
    );
  }

}