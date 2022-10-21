import 'package:flutter/material.dart';
import 'package:flutter_first/main.dart';
import 'package:flutter_first/kid/preschool.dart';
import 'dart:math';

class End extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return 
      Padding(
        padding: EdgeInsets.all(24),
        child:
        Column(
          children:<Widget>[
            Text("好棒喔！恭喜你全部都答對了！快到櫃檯領取獎勵吧！", style: TextStyle(fontSize: 24),),
            Container(
              margin: const EdgeInsets.only(top:10.0, left: 10, bottom: 10, right: 10),
              child : ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  count = 0;
                },
                child: Text('返回首頁'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(100),
                  backgroundColor:Color.fromRGBO(83, 178, 178, 1.0),
                ),
              ),
            )
          ],
        )
      );
  }
}