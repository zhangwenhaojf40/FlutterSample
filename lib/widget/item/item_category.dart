import 'package:flutter/material.dart';
import 'package:flutter_sample/bean/categoryBean.dart';
class CategoryItem extends StatefulWidget {
  CategoryItem(this.item);

  Results item;

  @override
  CategoryItemState createState() => CategoryItemState();
}

class CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      onTap: () {},
      title: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Align(
                  child:Text(
                    '${widget.item.desc}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 5,
                    ),
                    Text('${widget.item.who}'),
                    Container(
                      width: 5,
                    ),
                    Icon(
                      Icons.timer,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        '${widget.item.createdAt.substring(0, 10)}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              'https://hbimg.huabanimg.com/a9d10755cdf6fef52d529a807810c937dd4c70552bb46-sAwWOc_fw658',
              width: 80,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}