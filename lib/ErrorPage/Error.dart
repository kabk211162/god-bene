import 'package:flutter/material.dart';
import 'package:flutter_first/main.dart';
import 'package:flutter_first/kid/preschool.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('回答錯誤'),
      ),
      body: _ErrorPage(),
    );
  }
}

class _ErrorPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Column(
        children:<Widget>[
          Text("回答錯誤囉!再去偷看一下答案吧!", style: TextStyle(fontSize: 24),),
          Container(
            margin: const EdgeInsets.only(top:10.0, left: 10, bottom: 10, right: 10),
            child : ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                count = 0;
              },
              child: Text('返回首頁'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(100)
              ),
            ),
          )
        ],
    );
  }
}