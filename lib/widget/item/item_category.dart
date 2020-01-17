import 'package:FlutterSample/bean/categoryBean.dart';
import 'package:flutter/material.dart';
class CategoryItem extends StatefulWidget {
  CategoryItem(this.item);

  Results item;

  @override
  CategoryItemState createState() => CategoryItemState();
}

class CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
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
                      Text('${widget.item.who}',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
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
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
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
            Offstage(
              offstage: widget.item.images==null||widget.item.images.length==0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  widget.item.images!=null&&widget.item.images.length>0?widget.item.images[0]:'',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ],
        ),
      )
    );
  }
}