import 'package:flutter/material.dart';

class MeWidget extends StatefulWidget {
  @override
  MeWidgetState createState() => MeWidgetState();
}

class MeWidgetState extends State<MeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade100,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Center(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.network('https://hbimg.huabanimg.com/fa7be73547c402acc9c7a1e8717cba4d87a487c51adaa-4aL4RO_fw658',
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                    margin: EdgeInsets.only(left: 20),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Align(
                          child: Text(
                            'Mr.Zhang',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          alignment: Alignment.bottomLeft,
                        ),
                        margin: EdgeInsets.only(left: 20,top: 70,),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,left: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('死亡如风，常伴吾身',
                          style: TextStyle(
                            color:Colors.black54
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(//搜索干货
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade100,
                ),
                bottom: BorderSide(
                  color: Colors.grey.shade100,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Icon(Icons.search,
                  color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Text('搜索干货',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_right,
                color:Colors.blue,
                ),
                Container(
                  width: 15,
                ),
              ],
            ),
          ),
          Container(//历史干货
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade100,
                ),
                bottom: BorderSide(
                  color:Colors.grey.shade100
                ),
              )
            ),
            child: Row(
              children: <Widget>[
                Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Icon(Icons.timer,
                  color:Colors.blue,
                  ),
              ),
                Expanded(
                  child: Text('历史干货',
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: 18,
                  ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_right,
                color: Colors.blue,
                ),
                Container(
                  width: 10,
                ),
              ],
            ),
          ),
          Container(//其他gank项目
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade100,
                ),
                bottom: BorderSide(
                  color: Colors.grey.shade100,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child:Icon(Icons.more,
                  color:Colors.blue,
                  ),
                ),
                Expanded(
                  child:Text('其他Gank项目',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_right,
                  color:Colors.blue,
                ),
                Container(
                  width: 10,
                ),
              ],
            ),
          ),
          Container(//点赞
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade100,
                ),
                bottom: BorderSide(
                  color: Colors.grey.shade100,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child:Icon(Icons.star,
                  color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Text('点赞',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_right,
                color: Colors.blue,
                ),
                Container(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


