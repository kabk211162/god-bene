import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_first/main.dart';
import 'package:flutter_first/ErrorPage/Error.dart';
import 'dart:math';

import 'package:flutter_first/Ending/End.dart';

int count = 0;

List generate = [];

int the_pick = Random().nextInt(Questionair[age].length);

List Questionair = [
  [
    {
      'Qst': '請問今天來到的是什麼地方 ?',
      'Ans': ['台塑石油', '芝麻工坊', '源油', '土庫源順觀光油廠'],
      'Crt': 3,
      'To':'這裡是「土庫源順芝麻觀光油廠」哦!'
    },
    {
      'Qst': '哪一個不是源順產出的 ?',
      'Ans': ['麻油', '苦茶油', '花生油', '橄欖油'],
      'Crt': 3,
      'To':'源順專門出好油，有麻油、花生油還有苦茶油哦！'
    },
    {
      'Qst': '源順的標誌上面有什麼 ?',
      'Ans': ['蛇', '大象', '蝴蝶', '彩虹'],
      'Crt': 3,
      'To':'源順的標誌裡有一個大大的彩虹'
    }
  ],
  [
    {
      'Qst': '下列哪一個不是源順吉祥物 ?',
      'Ans': ['酷樂醬', '喜樂醬', '芝麻花仙子', '虱目魚小子'],
      'Crt': 3,
      'To':'這裡是「土庫源順芝麻觀光油廠」哦!'
    },
    {
      'Qst': '我們現在在哪個鄉鎮 ?',
      'Ans': ['台南東區', '高雄旗津', '彰化田尾', '雲林土庫'],
      'Crt': 3,
      'To':'這裡是「土庫源順芝麻觀光油廠」哦!'
    },
    {
      'Qst': '傳說法老吃什麼保持黑頭髮 ?',
      'Ans': ['桑葚', '墨魚', '黑巧克力', '黑芝麻'],
      'Crt': 3,
      'To':'這裡是「土庫源順芝麻觀光油廠」哦!'
    },
  ],
  [
    {
      'Qst': '下列哪一個不是源順吉祥物 ?',
      'Ans': ['酷樂醬', '喜樂醬', '芝麻花仙子', '虱目魚小子'],
      'Crt': 3,
      'To':'這裡是「土庫源順芝麻觀光油廠」哦!'
    },
    {
      'Qst': '我們現在在哪個鄉鎮 ?',
      'Ans': ['台南東區', '高雄旗津', '彰化田尾', '雲林土庫'],
      'Crt': 3,
      'To':'這裡是「土庫源順芝麻觀光油廠」哦!'
    },
    {
      'Qst': '傳說法老吃什麼保持黑頭髮 ?',
      'Ans': ['桑葚', '墨魚', '黑巧克力', '黑芝麻'],
      'Crt': 3,
      'To':'這裡是「土庫源順芝麻觀光油廠」哦!'
    },
  ],
  [
    {
      'Qst': '下列哪一個不是源順吉祥物 ?',
      'Ans': ['酷樂醬', '喜樂醬', '芝麻花仙子', '虱目魚小子'],
      'Crt': 3,
      'To':'這裡是「土庫源順芝麻觀光油廠」哦!'
    },
    {
      'Qst': '我們現在在哪個鄉鎮 ?',
      'Ans': ['台南東區', '高雄旗津', '彰化田尾', '雲林土庫'],
      'Crt': 3,
      'To':'這裡是「土庫源順芝麻觀光油廠」哦!'
    },
    {
      'Qst': '傳說法老吃什麼保持黑頭髮 ?',
      'Ans': ['桑葚', '墨魚', '黑巧克力', '黑芝麻'],
      'Crt': 3,
      'To':'這裡是「土庫源順芝麻觀光油廠」哦!'
    },
  ],
];

int backward(list){
  the_pick = the_pick + 1;
  if(the_pick == list.length){the_pick=0;}
  return 0;
}

void GoToError(context){
  Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorPage()));
  print(pickup());
}

void GoToRight(context, List){
  showDialog<String>(
    context: context,
      builder: (BuildContext context) => AlertDialog(
      title: const Text('答對了'),
      content:Text(Questionair[age][the_pick]['To']),
      actions: <Widget>[
        TextButton(
          onPressed: (){
            backward(List);
            choose = pickup();
            count++;
            print(count);
            if(count == 3){
              Navigator.push(context, MaterialPageRoute(builder: (context) => _Correct()));
            }else{
              Navigator.push(context, MaterialPageRoute(builder: (context) => _PreSchool()));
            }
          },
          child: const Text('繼續答題'),
        ),
      ],
    ),
  );
}

void check_if_right(context, chooser, list){
  if(chooser == Questionair[age][the_pick]['Crt']){
    GoToRight(context, list);
  }else{
    GoToError(context);
  }
}

List pickup(){
  List temp = [];

  for(var i = 0; i < Questionair[age][the_pick]['Ans'].length; i++){
    bool checker = true;
    var RandValue = Random().nextInt(4);
    for(var j in temp){
      if(RandValue == j){
        checker = false;
        i--;
        break;
      }
    }
    if(checker){temp+=[RandValue];}
  }

  print(temp);
  return temp;
}

class PreSchool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return
      Align(
        alignment:Alignment.center, 
          child:
            Column(
              children: (
                <Widget>[
                    Expanded(
                      flex: 1,
                      child:
                        Center(child: new Text(
                            Questionair[age][the_pick]['Qst'],
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center,
                            )
                        )
                    ),
                      Expanded(
                        flex: 1,
                        child:Container(
                        margin: const EdgeInsets.only(top:10.0, left: 10, bottom: 10, right: 10),
                        child : ElevatedButton(
                          onPressed: () {check_if_right(context, choose[0], Questionair[age]);},
                          child: Text(Questionair[age][the_pick]['Ans'][choose[0]]),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(100),
                            textStyle: const TextStyle(fontSize: 20),
                            backgroundColor: Colors.blue
                          ),
                        ),
                      )
                    ),
                    Expanded(
                      flex: 1,
                      child:Container(
                        margin: const EdgeInsets.only(top:10.0, left: 10, bottom: 10, right: 10),
                        child : ElevatedButton(
                          onPressed: () {check_if_right(context, choose[1], Questionair[age]);},
                          child: Text(Questionair[age][the_pick]['Ans'][choose[1]]),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(100),
                            textStyle: const TextStyle(fontSize: 20),
                            backgroundColor: Colors.green
                          ),
                        ),
                      )
                    ),
                    Expanded(
                      flex: 1,
                      child:Container(
                        margin: const EdgeInsets.only(top:10.0, left: 10, bottom: 10, right: 10),
                        child : ElevatedButton(
                          onPressed: () {check_if_right(context, choose[2], Questionair[age]);},
                          child: Text(Questionair[age][the_pick]['Ans'][choose[2]]),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(100),
                            textStyle: const TextStyle(fontSize: 20),
                            backgroundColor: Colors.orange
                          ),
                        ),
                      )
                    ),
                    Expanded(
                      flex: 1,
                      child:Container(
                        margin: const EdgeInsets.only(top:10.0, left: 10, bottom: 10, right: 10),
                        child : ElevatedButton(
                          onPressed: () {
                            check_if_right(context, choose[3], Questionair[age]);
                          },
                          child: Text(Questionair[age][the_pick]['Ans'][choose[3]]),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(100),
                            textStyle: const TextStyle(fontSize: 20),
                            backgroundColor: Colors.red
                          ),
                        ),
                      )
                    )
                ]
              )
            )
      );
  }
}

class _PreSchool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('學齡前題目'),
        backgroundColor: Color.fromRGBO(83, 178, 178, 1.0),
      ),
      drawer: const drawers(),
      body: PreSchool(),
    );
  }
}

class _Correct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('恭喜全部答對！'),
        backgroundColor: Color.fromRGBO(83, 178, 178, 1.0),
      ),
      drawer: const drawers(),
      body: End(),
    );
  }
}