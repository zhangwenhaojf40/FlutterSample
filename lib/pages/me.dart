import 'package:flutter/material.dart';
class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                Expanded(
                  child: Text(
                    '搜索干货',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}