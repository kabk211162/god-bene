import 'package:flutter/material.dart';
import 'package:flutter_first/main.dart';
import 'package:url_launcher/url_launcher.dart';

final List<int> _items = List<int>.generate(18, (int index) => index);

const tourist_word = ['入口區', 
                      '磅秤區',
                      '什麼是油',
                      '源順老機械', 
                      '品牌歷史', 
                      '土庫？塗褲？', 
                      '製油品質',
                      '意象樹',
                      '製程比較',
                      '濾油機',
                      '檢驗過程',
                      '包裝櫥窗',
                      '芝麻好處',
                      '芝麻故事',
                      '貴人提點',
                      '小廚師互動',
                      '李秋涼老師的故事',
                      '源順健康油的好處'
                      ];

class tourPage extends StatefulWidget {
  const tourPage({super.key});

  @override
  State<tourPage> createState() => _tourPage();
  
}

class _tourPage extends State<tourPage> {
  bool shadowColor = false;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
      appBar: AppBar(
        title: const Text('語音導覽'),
        backgroundColor: Color.fromRGBO(83, 178, 178, 1.0),
        scrolledUnderElevation: scrolledUnderElevation,
        shadowColor: shadowColor ? Theme.of(context).colorScheme.shadow : null,
      ),
      drawer: const drawers(),
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: _items.length,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:Color.fromRGBO(83, 178, 178, 1.0),),
            child: Text(tourist_word[index],style: TextStyle(fontSize: 16)),
            onPressed: () async{
              var url;
              index = index+1;
              if(index < 10)
                {url = Uri.parse("https://www.god-bene.com.tw/images/stories/0$index(2).mp3");}
              else
                {url = Uri.parse("https://www.god-bene.com.tw/images/stories/$index(2).mp3");}
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              }
          );
        },
      ),
    );
  }
}