import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class ItemHome extends StatelessWidget{
  PageController _controller=PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );
  int _index;
  List<String> images;
  ItemHome(this._index,this.images);
  @override
  Widget build(BuildContext context) {
    if(_index==0){
      return getBanner();
    }else{
      return getItem();
    }
  }
  Widget getBanner(){
    return Container(
      height: 200,
      child:Swiper(
        itemCount: images.length,
        pagination: SwiperPagination(),
        autoplay: true,
        itemBuilder: (context,index){
          return Image.network(
              images[index],
              fit:BoxFit.cover,
          );
        },
      ),
    );
  }
  Widget getItem(){
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${_index}Flutter demo item title label!Flutter demo item title labelFlutter demo item title label',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
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
                    Text('testUser'),
                    Container(
                      width: 10,
                    ),
                    Icon(
                      Icons.timer,
                      color: Colors.blue,
                    ),
                    Text('2020-01-14'),
                  ],

                )
              ],
            ),
          ),
          Container(
            width: 15,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child:Image.network(
                'https://hbimg.huabanimg.com/a9d10755cdf6fef52d529a807810c937dd4c70552bb46-sAwWOc_fw658',
                width: 80,
                height: 80,
              )
          )
        ],
      ),
    );
  }

}