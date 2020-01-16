import 'package:flutter/material.dart';

class LoadMore extends StatelessWidget {
  static const int LOADEND = 0;
  static const int LOADING=1;
  int _loadState=1;
  LoadMore(this._loadState);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: _getLoadState(),
      ),
    );
  }

  Widget _getLoadState() {
    if(_loadState==LOADING){
      return CircularProgressIndicator();
    }else{
      return  Text('没有更多数据');
    }
  }
}
