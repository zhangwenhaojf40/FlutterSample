import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var list = List();

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('首页'),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child:ListView.separated(
          itemCount:list.length,
          separatorBuilder: (context,index){
            return Container(
              height: 1,
              color: Colors.grey.shade100,
            );
          },
          itemBuilder: (context,index){
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
                              '${index}Flutter demo item title label!Flutter demo item title labelFlutter demo item title label',
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
          },
        ),
      )
      

    );
  }
  void initData() {
    for(int i=0;i<30;i++){
      list.add("$i");
    }
  }
  Future<void> _onRefresh() async {
    print("_onRefresh");
//    await Future.delayed(Duration(milliseconds: 1500));
  }
}

